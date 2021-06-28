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
	
all: $(MAIN)

$(MAIN): $(OBJ)
	ar -crs $(MAIN) $(OBJ)

$(OBJF)/DataTypeModule.o: $(SRCF)/DataTypeModule.f90
	$(FC) $(FFLAGS) $(MOD) $(SRCF)/DataTypeModule.f90 -o $(OBJF)/DataTypeModule.o
	
$(OBJF)/StringModule.o: $(SRCF)/StringModule.f90
	$(FC) $(FFLAGS) $(MOD) $(SRCF)/StringModule.f90 -o $(OBJF)/StringModule.o	

.PHONY: clean
	
clean:
	rm -r $(BUILD)/* $(OBJF)/*
