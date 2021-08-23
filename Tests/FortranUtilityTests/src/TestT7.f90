! String contains string.
function testT7() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld, world
    
    helloWorld = "Hello World"
    world = "World"
    passed = helloWorld%contains(world)
end function