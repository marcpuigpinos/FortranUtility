! Append text and string with + operator
function testM9() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: world, sentence
    
    world = fu_string("world!.")
    sentence = "Hello " + world
    passed = sentence == "Hello world!."
end function