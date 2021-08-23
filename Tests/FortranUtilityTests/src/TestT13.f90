! String equals to text
function testT13() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = "Hello World"
    passed = helloWorld%equals("Hello World")
end function