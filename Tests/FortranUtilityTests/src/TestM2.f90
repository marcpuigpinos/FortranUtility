! Comparison of a string and text.
function testM2() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello
    
    hello = fu_string("Hello")
    passed = hello == "Hello"
end function