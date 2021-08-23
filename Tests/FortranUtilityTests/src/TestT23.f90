! String upcase
function testT23() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str
    
    str = "hello"
    call str%upcase()
    passed = str == "HELLO"
end function