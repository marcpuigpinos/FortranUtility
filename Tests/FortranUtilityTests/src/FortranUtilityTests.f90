program FortranUtilityTest
    
    use fu_mDataType
    
    implicit none
    
    logical(fu_lgtype) :: passed, passedM1, passedM2, passedM3, passedM4, passedM5, passedM6, passedM7, passedM8, passedM9, &
                          passedM10, passedM11, passedT1, passedT2, passedT3, passedT4, passedT5, passedT6, passedT7, passedT8, &
                          passedT9, passedT10, passedT11, passedT12, passedT13, passedT14, passedT15, passedT16, passedT17, &
                          passedT18, passedT19, passedT20, passedT21, passedT22, passedT23, passedT24
    
    interface
        include 'TestM1.h'
        include 'TestM2.h'
        include 'TestM3.h'
        include 'TestM4.h'
        include 'TestM5.h'
        include 'TestM6.h'
        include 'TestM7.h'
        include 'TestM8.h'
        include 'TestM9.h'
        include 'TestM10.h'
        include 'TestM11.h'
        include 'TestT1.h'
        include 'testT2.h'
        include 'testT3.h'
        include 'testT4.h'
        include 'testT5.h'
        include 'testT6.h'
        include 'testT7.h'
        include 'testT8.h'
        include 'testT9.h'
        include 'testT10.h'
        include 'testT11.h'
        include 'testT12.h'
        include 'testT13.h'
        include 'testT14.h'
        include 'testT15.h'
        include 'testT16.h'
        include 'testT17.h'
        include 'testT18.h'
        include 'testT19.h'
        include 'testT20.h'
        include 'testT21.h'
        include 'testT22.h'
        include 'testT23.h'
        include 'testT24.h'
    end interface    
    
    passedM1  = testM1()
    passedM2  = testM2()
    passedM3  = testM3()
    passedM4  = testM4()
    passedM5  = testM5()
    passedM6  = testM6()
    passedM7  = testM7()
    passedM8  = testM8()
    passedM9  = testM9()
    passedM10 = testM10()
    passedM11 = testM11()
    passedT1  = testT1()
    passedT2  = testT2()
    passedT3  = testT3()
    passedT4  = testT4()
    passedT5  = testT5()
    passedT6  = testT6()
    passedT7  = testT7()
    passedT8  = testT8()
    passedT9  = testT9()
    passedT10 = testT10()
    passedT11 = testT11()    
    passedT12 = testT12()
    passedT13 = testT13()  
    passedT14 = testT14()
    passedT15 = testT15()    
    passedT16 = testT16()
    passedT17 = testT17() 
    passedT18 = testT18()
    passedT19 = testT19()    
    passedT20 = testT20()
    passedT21 = testT21()
    passedT22 = testT22()
    passedT23 = testT23()
    passedT24 = testT24()
    
    passed = passedM1 .and. passedM2 .and. passedM3 .and. passedM4 .and. passedM5 .and. passedM6 .and. passedM7 .and. &
             passedM8 .and. passedM9 .and. passedM10 .and. passedM11 .and. passedT1 .and. passedT2 .and. passedT3 .and. &
             passedT4 .and. passedT5 .and. passedT6 .and. passedT7 .and. passedT8 .and. passedT9 .and. passedT10 .and. &
             passedT11 .and. passedT12 .and. passedT13 .and. passedT14 .and. passedT15 .and. passedT16 .and. passedT17 .and. &
             passedT18 .and. passedT19 .and. passedT20 .and. passedT21 .and. passedT22 .and. passedT23 .and. passedT24
    
    write(*,*) "+-----------------------------------------------+"
    write(*,*) "|         FORTRAN UTILITY TESTS RESULTS         |"
    write(*,*) "+-----------------------------------------------+"
    write(*,*) ""
    write(*,*) "+ Module procedures tests."
    write(*,*) "--------------------------"
    write(*,*) "TestM1:  ", passedM1
    write(*,*) "TestM2:  ", passedM2
    write(*,*) "TestM3:  ", passedM3
    write(*,*) "TestM4:  ", passedM4
    write(*,*) "TestM5:  ", passedM5
    write(*,*) "TestM6:  ", passedM6
    write(*,*) "TestM7:  ", passedM7
    write(*,*) "TestM8:  ", passedM8
    write(*,*) "TestM9:  ", passedM9
    write(*,*) "TestM10: ", passedM10
    write(*,*) "TestM11: ", passedM11
    write(*,*) ""
    write(*,*) "+ Type bound procedure tests."
    write(*,*) "-----------------------------"
    write(*,*) ""
    write(*,*) "TestT1:  ", passedT1
    write(*,*) "TestT2:  ", passedT2
    write(*,*) "TestT3:  ", passedT3
    write(*,*) "TestT4:  ", passedT4
    write(*,*) "TestT5:  ", passedT5
    write(*,*) "TestT6:  ", passedT6
    write(*,*) "TestT7:  ", passedT7
    write(*,*) "TestT8:  ", passedT8
    write(*,*) "TestT9:  ", passedT9
    write(*,*) "TestT10: ", passedT10
    write(*,*) "TestT11: ", passedT11
    write(*,*) "TestT12: ", passedT12
    write(*,*) "TestT13: ", passedT13
    write(*,*) "TestT14: ", passedT14
    write(*,*) "TestT15: ", passedT15
    write(*,*) "TestT16: ", passedT16
    write(*,*) "TestT17: ", passedT17
    write(*,*) "TestT18: ", passedT18
    write(*,*) "TestT19: ", passedT19
    write(*,*) "TestT20: ", passedT20
    write(*,*) "TestT21: ", passedT21
    write(*,*) "TestT22: ", passedT22  
    write(*,*) "TestT23: ", passedT23  
    write(*,*) "TestT24: ", passedT24  
    write(*,*) ""
    write(*,*) "FINAL RESULT: ", passed
    
end program