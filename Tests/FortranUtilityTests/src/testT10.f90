! String not ends with text
function testT10() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = "Hello World"
    passed = .not. helloWorld%endsWith("puma")
end function