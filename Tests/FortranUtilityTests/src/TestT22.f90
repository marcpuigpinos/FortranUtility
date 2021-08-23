! String is not empty
function testT22() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str
    
    str = fu_string("Hello")
    passed = .not. str%isEmpty()
end function