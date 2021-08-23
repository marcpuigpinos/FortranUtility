!Assignment operator with string.
function testM6() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str1, str2
    
    str1 = fu_string("Abomination")
    str2 = str1
    passed = str1 == str2
end function
    