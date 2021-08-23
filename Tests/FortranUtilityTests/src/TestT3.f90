! Concatenate text to a string.
function testT3() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello
    
    hello = "Hello, "
    call hello%concat("Gisel")
    passed = hello == "Hello, Gisel"
end function