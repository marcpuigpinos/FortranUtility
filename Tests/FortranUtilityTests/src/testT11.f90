! String ends with string.
function testT11() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld, endString
    
    helloWorld = "Hello World"
    endString = "World"
    passed = helloWorld%endsWith(endString)
end function