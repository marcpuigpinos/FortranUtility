! String not equals ignoring case to text
function testT18() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = "Hello World"
    passed = .not. helloWorld%equalsIgnoreCase("pUmA")
end function