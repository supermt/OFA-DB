// Copyright (c) 2011 The LevelDB Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file. See the AUTHORS file for names of contributors.

#ifndef STORAGE_LEVELDB_DB_MEMTABLE_H_
#define STORAGE_LEVELDB_DB_MEMTABLE_H_

#include <string>
#include <vector>
#include <iostream>
#include "leveldb/db.h"
#include <set>
#include "db/dbformat.h"
#include "db/skiplist.h"
#include "util/arena.h"

namespace leveldb
{

class InternalKeyComparator;
class MemTableIterator;

class MemTable
{
public:
  // MemTables are reference counted.  The initial reference count
  // is zero and the caller must call Ref() at least once.
  explicit MemTable(const InternalKeyComparator &comparator);

  struct KeyComparator
  {
    const InternalKeyComparator comparator;
    explicit KeyComparator(const InternalKeyComparator &c) : comparator(c) {}
    int operator()(const char *a, const char *b) const;
  };

  typedef SkipList<const char *, KeyComparator> Table;
  // Increase reference count.
  void Ref() { ++refs_; }

  // Drop reference count.  Delete if no more references exist.
  void Unref()
  {
    --refs_;
    assert(refs_ >= 0);
    if (refs_ <= 0)
    {
      delete this;
    }
  }

  // Returns an estimate of the number of bytes of data in use by this
  // data structure. It is safe to call when MemTable is being modified.
  size_t ApproximateMemoryUsage();

  // Return an iterator that yields the contents of the memtable.
  //
  // The caller must ensure that the underlying MemTable remains live
  // while the returned iterator is live.  The keys returned by this
  // iterator are internal keys encoded by AppendInternalKey in the
  // db/format.{h,cc} module.
  Iterator *NewIterator();

  // Add an entry into memtable that maps key to value at the
  // specified sequence number and with the specified type.
  // Typically value will be empty if type==kTypeDeletion.
  void Add(SequenceNumber seq, ValueType type,
           const Slice &key,
           const Slice &value);

  // If memtable contains a value for key, store it in *value and return true.
  // If memtable contains a deletion for key, store a NotFound() error
  // in *status and return true.
  // Else, return false.
  bool Get(const LookupKey &key, std::string *value, Status *s);

private:
  ~MemTable(); // Private since only Unref() should be used to delete it

  friend class MemTableIterator;
  friend class MemTableBackwardIterator;
  KeyComparator comparator_;

public:
  KeyComparator getComparator()
  {
    return this->comparator_;
  }
  Table *getTable()
  {
    return &this->table_;
  }

private:
  int refs_;
  Arena arena_;
  Table table_;

  // No copying allowed
  MemTable(const MemTable &);
  void operator=(const MemTable &);
};

const int bucket_size = 64;

// Lvlup , annouce the data structure to the outside
typedef SkipList<const char *, MemTable::KeyComparator> BlockFile;

struct kvpair
{
  Slice key;
  Slice value;
};

inline bool operator<(const kvpair &x, const kvpair &y)
{
  return x.key < y.key;
}

class PMem_Block
{
private:
  InternalKey smallest, largest; // use extract user key function or other method to get this "User key"
  std::vector<kvpair> list;      // now it is hard to say which is the block....
  int pair_count = 0;

public:
  PMem_Block(MemTable *source_table)
  {
    // while we are trying to create PMem block, we should record the current tables' smallest and largest block.
    Arena *empty_block = new Arena(); // create an empty space
    BlockFile::Iterator *iter = new BlockFile::Iterator(source_table->getTable());
    // this is a skiplist iterator
    iter->SeekToFirst();
    Slice all = iter->key();
    Slice key;
    GetLengthPrefixedSlice(&all, &key);
    smallest.DecodeFrom(key);
    uint64_t num;
    unsigned char c;
    uint64_t sequence;
    int count = 1;
    kvpair temp;
    Slice user_key = smallest.user_key();
    temp.key = user_key;
    temp.value = all;
    list.push_back(temp);

    for (; iter->Valid(); iter->Next())
    {
      all = iter->key();
      GetLengthPrefixedSlice(&all, &key);
      largest.DecodeFrom(key);
      Slice itkeys = largest.Encode();
      num = DecodeFixed64(itkeys.data() - 8);
      c = num & 0xff;
      ValueType type = static_cast<ValueType>(c);
      InternalKey temp;
      temp.DecodeFrom(iter->key());
      user_key = largest.user_key();
      // this NVM memtable use the latest sequence for all records
      // Records in this memtable there is no dumplicate records
      // so, the sequence number should only be added when there are freshing to the bucket.
      if (list[count - 1].key == user_key)
      {
        // it must exist first before it can be delete
        if (type == kTypeDeletion)
        {
          // if the record is not exist and get deleted, it means it still should add to records
          count--;
          list.pop_back();
          // remove this key, it may be override by another
        }
        list[count - 1].value = all; // use new value to replace the old one
        // type = kTypeValue
      }
      else
      {
        kvpair temp;
        temp.key = user_key;
        temp.value = all;
        list.push_back(temp);
        // only when there is an new key, it should be add up
        count++;
      }
    }
    pair_count = count;

    // mem copy the key and the value into target memory block
  };
  ~PMem_Block()
  {
    list.clear();
  }
};

}; // namespace leveldb

#endif // STORAGE_LEVELDB_DB_MEMTABLE_H_