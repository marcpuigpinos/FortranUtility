! String equals to string
function testT15() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str1, str2
    
    str1 = "Hello World"
    str2 = "Hello World"
    passed = str1%equals(str2)
end function
    