! String not equals to string
function testT16() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str1, str2
    
    str1 = "Hello World"
    str2 = "puma"
    passed = .not. str1%equals(str2)
end function