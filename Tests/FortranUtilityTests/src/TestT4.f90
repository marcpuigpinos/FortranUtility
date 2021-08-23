! Concatenate string to a string
function testT4() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello, biel
    
    hello = "Hello, "
    biel = "Biel"
    call hello%concat(biel)
    passed = hello == "Hello, Biel"
end function