! Get text of the string.
function testT1() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = fu_string("Hello World!")
    passed = helloWorld%getText() == "Hello World!"
end function