! Comparison of two strings.
function testM1() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: firstHello
    type(fu_string)    :: secondHello
    
    firstHello = fu_string("Hello")
    secondHello = fu_string("Hello")
    passed = firstHello == secondHello
end function
    