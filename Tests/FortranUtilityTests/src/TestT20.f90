! String not equals ignoring case
function testT20() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str1, str2
    
    str1 = "Hello World"
    str2 = "pUmA"
    passed = .not. str1%equalsIgnoreCase(str2)
end function