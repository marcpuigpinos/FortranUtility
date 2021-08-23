! String downcase
function testT24() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: str
    
    str = "HELLO"
    call str%downcase()
    passed = str == "hello"
end function