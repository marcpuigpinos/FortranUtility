! Append string and string with + operator
function testM7() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: hello, world, sentence
    
    hello = fu_string("Hello ")
    world = fu_string("world!.")
    sentence = hello + world
    passed = sentence == "Hello world!."
end  function
    
    