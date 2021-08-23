! Get length of the string
function testT2() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = fu_string("Hello world!")
    passed = helloWorld%getLength() == len("Hello world!")
end function