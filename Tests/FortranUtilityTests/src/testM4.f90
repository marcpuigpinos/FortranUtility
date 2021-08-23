! Assignment operation with empty text.
function testM4() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str
    
    str = fu_string()
    passed = str%isEmpty()
end function