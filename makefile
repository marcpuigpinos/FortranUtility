FC = gfortran
FFLAGS = -Werror -g -c
#INCLUDES = -I/dir
#LIBS = -lmylib
SRCF = src
SRC = $(SRCF)/DataTypeModule.f90 $(SRCF)/StringModule.f90
OBJF = objs
OBJ = $(OBJF)/DataTypeModule.o $(OBJF)/StringModule.o
BUILD = bin
MAIN = $(BUILD)/FortranUtility.a
MOD = -J$(BUILD)

.PHONY: print_vars

print_vars:
	@echo $(SRC)
	@echo $(OBJ)
	@echo $(OS)
	@echo rm -r $(BUILD)\* $(OBJF)\*

.PHONY: copy_test

copy_test:
	cp $(BUILD)/* Tests/FortranUtilityTests/LibraryToTest/gnu  

copy_test_win:
	copy $(BUILD)\* Tests\FortranUtilityTests\LibraryToTest\gnu  
	
all: $(MAIN)

$(MAIN): $(OBJ)
	@echo Linking the library...
	ar -crs $(MAIN) $(OBJ)

$(OBJF)/DataTypeModule.o: $(SRCF)/DataTypeModule.f90
	@echo ... Compiling DataTypeModule ...
	$(FC) $(FFLAGS) $(MOD) $(SRCF)/DataTypeModule.f90 -o $(OBJF)/DataTypeModule.o
	
$(OBJF)/StringModule.o: $(SRCF)/StringModule.f90
	@echo ... Compiling DataTypeModule ...
	$(FC) $(FFLAGS) $(MOD) $(SRCF)/StringModule.f90 -o $(OBJF)/StringModule.o	

.PHONY: clean
	
clean:
	@echo ... Cleaning workspace ...
	rm -r $(BUILD)/* $(OBJF)/*

.PHONY: clean_win

clean_win:
	@echo ... Cleaning workspace ...
	del /F /Q $(BUILD)\* $(OBJF)\*
