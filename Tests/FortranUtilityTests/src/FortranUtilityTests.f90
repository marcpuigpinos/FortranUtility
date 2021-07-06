program FortranUtilityTest
    
    use fu_mString
    
    implicit none
    
    type(fu_string) :: helloName
    character(len=4) :: name
    
    name = "Marc"
    print *, name(2:2)
    
    helloName = fu_string("Hello World")
    
    helloName = helloName + " Marc!"
    call write(helloName)
    helloName = helloName * 3
    call write(helloName)
    helloName = helloName - "Marc"
    call write(helloName)
    helloName = fu_string()
    print *, helloName%isEmpty()
    helloName = fu_string("Barbera del Valles")
    print *, helloName%getLength()
    print *, helloName%getText()
    call helloName%upcase()
    call helloName%write()
    call helloName%downcase()
    call helloName%write()
    
    stop
    
end program