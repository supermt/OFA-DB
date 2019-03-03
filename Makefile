.PHONY: clean All

All:
	@echo "----------Building project:[ LvlupDB - Debug ]----------"
	@"$(MAKE)" -f  "LvlupDB.mk"
clean:
	@echo "----------Cleaning project:[ LvlupDB - Debug ]----------"
	@"$(MAKE)" -f  "LvlupDB.mk" clean
