FC = gfortran
FFLAGS = -Werror -g -c
INCLUDES = -ILibraryToTest/gnu
LIBD = LibraryToTest/gnu
LIBS = $(LIBD)/FortranUtility.a
SRCF = src
SRC = $(SRCF)/FortranUtilityTests.f90
OBJF = objs
OBJ = $(OBJF)/FortranUtilityTests.o
BUILD = bin
MAIN = $(BUILD)/runTests
MOD = -J$(BUILD)	
	
all: $(MAIN)

$(MAIN): $(OBJ)
	@echo Linking...
	$(FC) -o $(MAIN) $(OBJ) $(LIBS)

$(OBJF)/FortranUtilityTests.o: $(SRCF)/FortranUtilityTests.f90
	@echo ... Compiling FortranUtilityTests ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/FortranUtilityTests.f90 -o $(OBJF)/FortranUtilityTests.o

.PHONY: clean
	
clean:
	@echo ... Cleaning workspace ...
	rm -r $(BUILD)/* $(OBJF)/*

.PHONY: clean_win

clean_win:
	@echo ... Cleaning workspace ...
	del /F /Q $(BUILD)\* $(OBJF)\*
