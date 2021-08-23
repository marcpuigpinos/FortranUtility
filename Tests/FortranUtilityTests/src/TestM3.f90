! Comparison of a text and string.
function testM3() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello
    
     hello = fu_string("Hello")
     passed = "Hello" == hello
end function