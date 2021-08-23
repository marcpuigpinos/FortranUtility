! Append string and text with + operator
function testM8() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello, sentence
    
    hello = fu_string("Hello ")
    sentence = hello + "world!."
    passed = sentence == "Hello world!."
end function
    