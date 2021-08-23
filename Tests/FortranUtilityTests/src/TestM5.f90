! Assigment operation with text
function testM5() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello
    
    hello = "Hello"
    passed = hello == "Hello"
end function