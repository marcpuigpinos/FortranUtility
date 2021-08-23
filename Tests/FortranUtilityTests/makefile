FC = gfortran
FFLAGS = -Werror -g -c
INCLUDES = -ILibraryToTest/gnu
LIBD = LibraryToTest/gnu
LIBS = $(LIBD)/FortranUtility.a
SRCF = src
SRC = $(SRCF)/FortranUtilityTests.f90 $(SRCF)/TestM1.f90 $(SRCF)/TestM2.f90 $(SRCF)/TestM3.f90 $(SRCF)/TestM4.f90 $(SRCF)/TestM5.f90 $(SRCF)/TestM6.f90 \
$(SRCF)/TestM7.f90 $(SRCF)/TestM8.f90 $(SRCF)/TestM9.f90 $(SRCF)/TestM10.f90 $(SRCF)/TestM11.f90 $(SRCF)/TestT1.f90 $(SRCF)/TestT2.f90 $(SRCF)/TestT3.f90 \
$(SRCF)/TestT4.f90 $(SRCF)/TestT5.f90 $(SRCF)/TestT6.f90 $(SRCF)/TestT7.f90 $(SRCF)/TestT8.f90 $(SRCF)/TestT9.f90 $(SRCF)/TestT10.f90 $(SRCF)/TestT11.f90 \
$(SRCF)/TestT12.f90 $(SRCF)/TestT13.f90 $(SRCF)/TestT14.f90 $(SRCF)/TestT15.f90 $(SRCF)/TestT16.f90 $(SRCF)/TestT17.f90 $(SRCF)/TestT18.f90 $(SRCF)/TestT19.f90 \
$(SRCF)/TestT20.f90 $(SRCF)/TestT21.f90 $(SRCF)/TestT22.f90 $(SRCF)/TestT23.f90 $(SRCF)/TestT24.f90
OBJF = objs
OBJ = $(OBJF)/FortranUtilityTests.o $(OBJF)/TestM1.o $(OBJF)/TestM2.o $(OBJF)/TestM3.o $(OBJF)/TestM4.o $(OBJF)/TestM5.o $(OBJF)/TestM6.o \
$(OBJF)/TestM7.o $(OBJF)/TestM8.o $(OBJF)/TestM9.o $(OBJF)/TestM10.o $(OBJF)/TestM11.o $(OBJF)/TestT1.o $(OBJF)/TestT2.o $(OBJF)/TestT3.o \
$(OBJF)/TestT4.o $(OBJF)/TestT5.o $(OBJF)/TestT6.o $(OBJF)/TestT7.o $(OBJF)/TestT8.o $(OBJF)/TestT9.o $(OBJF)/TestT10.o $(OBJF)/TestT11.o \
$(OBJF)/TestT12.o $(OBJF)/TestT13.o $(OBJF)/TestT14.o $(OBJF)/TestT15.o $(OBJF)/TestT16.o $(OBJF)/TestT17.o $(OBJF)/TestT18.o $(OBJF)/TestT19.o \
$(OBJF)/TestT20.o $(OBJF)/TestT21.o $(OBJF)/TestT22.o $(OBJF)/TestT23.o $(OBJF)/TestT24.o
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

$(OBJF)/TestM1.o: $(SRCF)/TestM1.f90
	@echo ... Compiling TestM1 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM1.f90 -o $(OBJF)/TestM1.o

$(OBJF)/TestM2.o: $(SRCF)/TestM2.f90
	@echo ... Compiling TestM2 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM2.f90 -o $(OBJF)/TestM2.o

$(OBJF)/TestM3.o: $(SRCF)/TestM3.f90
	@echo ... Compiling TestM3 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM3.f90 -o $(OBJF)/TestM3.o

$(OBJF)/TestM4.o: $(SRCF)/TestM4.f90
	@echo ... Compiling TestM4 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM4.f90 -o $(OBJF)/TestM4.o

$(OBJF)/TestM5.o: $(SRCF)/TestM5.f90
	@echo ... Compiling TestM5 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM5.f90 -o $(OBJF)/TestM5.o

$(OBJF)/TestM6.o: $(SRCF)/TestM6.f90
	@echo ... Compiling TestM6 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM6.f90 -o $(OBJF)/TestM6.o

$(OBJF)/TestM7.o: $(SRCF)/TestM7.f90
	@echo ... Compiling TestM7 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM7.f90 -o $(OBJF)/TestM7.o

$(OBJF)/TestM8.o: $(SRCF)/TestM8.f90
	@echo ... Compiling TestM8 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM8.f90 -o $(OBJF)/TestM8.o

$(OBJF)/TestM9.o: $(SRCF)/TestM9.f90
	@echo ... Compiling TestM9 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM9.f90 -o $(OBJF)/TestM9.o

$(OBJF)/TestM10.o: $(SRCF)/TestM10.f90
	@echo ... Compiling TestM10 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM10.f90 -o $(OBJF)/TestM10.o

$(OBJF)/TestM11.o: $(SRCF)/TestM11.f90
	@echo ... Compiling TestM11 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestM11.f90 -o $(OBJF)/TestM11.o	

$(OBJF)/TestT1.o: $(SRCF)/TestT1.f90
	@echo ... Compiling TestT1 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT1.f90 -o $(OBJF)/TestT1.o

$(OBJF)/TestT2.o: $(SRCF)/TestT2.f90
	@echo ... Compiling TestT2 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT2.f90 -o $(OBJF)/TestT2.o

$(OBJF)/TestT3.o: $(SRCF)/TestT3.f90
	@echo ... Compiling TestT3 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT3.f90 -o $(OBJF)/TestT3.o

$(OBJF)/TestT4.o: $(SRCF)/TestT4.f90
	@echo ... Compiling TestT4 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT4.f90 -o $(OBJF)/TestT4.o

$(OBJF)/TestT5.o: $(SRCF)/TestT5.f90
	@echo ... Compiling TestT5 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT5.f90 -o $(OBJF)/TestT5.o

$(OBJF)/TestT6.o: $(SRCF)/TestT6.f90
	@echo ... Compiling TestT6 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT6.f90 -o $(OBJF)/TestT6.o

$(OBJF)/TestT7.o: $(SRCF)/TestT7.f90
	@echo ... Compiling TestT7 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT7.f90 -o $(OBJF)/TestT7.o

$(OBJF)/TestT8.o: $(SRCF)/TestT8.f90
	@echo ... Compiling TestT8 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT8.f90 -o $(OBJF)/TestT8.o

$(OBJF)/TestT9.o: $(SRCF)/TestT9.f90
	@echo ... Compiling TestT9 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT9.f90 -o $(OBJF)/TestT9.o

$(OBJF)/TestT10.o: $(SRCF)/TestT10.f90
	@echo ... Compiling TestT10 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT10.f90 -o $(OBJF)/TestT10.o

$(OBJF)/TestT11.o: $(SRCF)/TestT11.f90
	@echo ... Compiling TestT11 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT11.f90 -o $(OBJF)/TestT11.o

$(OBJF)/TestT12.o: $(SRCF)/TestT12.f90
	@echo ... Compiling TestT12 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT12.f90 -o $(OBJF)/TestT12.o	

$(OBJF)/TestT13.o: $(SRCF)/TestT13.f90
	@echo ... Compiling TestT13 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT13.f90 -o $(OBJF)/TestT13.o

$(OBJF)/TestT14.o: $(SRCF)/TestT14.f90
	@echo ... Compiling TestT14 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT14.f90 -o $(OBJF)/TestT14.o

$(OBJF)/TestT15.o: $(SRCF)/TestT15.f90
	@echo ... Compiling TestT15 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT15.f90 -o $(OBJF)/TestT15.o

$(OBJF)/TestT16.o: $(SRCF)/TestT16.f90
	@echo ... Compiling TestT16 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT16.f90 -o $(OBJF)/TestT16.o

$(OBJF)/TestT17.o: $(SRCF)/TestT17.f90
	@echo ... Compiling TestT17 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT17.f90 -o $(OBJF)/TestT17.o

$(OBJF)/TestT18.o: $(SRCF)/TestT18.f90
	@echo ... Compiling TestT18 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT18.f90 -o $(OBJF)/TestT18.o

$(OBJF)/TestT19.o: $(SRCF)/TestT19.f90
	@echo ... Compiling TestT19 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT19.f90 -o $(OBJF)/TestT19.o

$(OBJF)/TestT20.o: $(SRCF)/TestT20.f90
	@echo ... Compiling TestT20 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT20.f90 -o $(OBJF)/TestT20.o

$(OBJF)/TestT21.o: $(SRCF)/TestT21.f90
	@echo ... Compiling TestT21 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT21.f90 -o $(OBJF)/TestT21.o

$(OBJF)/TestT22.o: $(SRCF)/TestT22.f90
	@echo ... Compiling TestT22 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT22.f90 -o $(OBJF)/TestT22.o

$(OBJF)/TestT23.o: $(SRCF)/TestT23.f90
	@echo ... Compiling TestT23 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT23.f90 -o $(OBJF)/TestT23.o

$(OBJF)/TestT24.o: $(SRCF)/TestT24.f90
	@echo ... Compiling TestT24 ...
	$(FC) $(FFLAGS) $(INCLUDES) $(MOD) -c $(SRCF)/TestT24.f90 -o $(OBJF)/TestT24.o		

.PHONY: clean
	
clean:
	@echo ... Cleaning workspace ...
	rm -r $(BUILD)/* $(OBJF)/*

.PHONY: clean_win

clean_win:
	@echo ... Cleaning workspace ...
	del /F /Q $(BUILD)\* $(OBJF)\*
