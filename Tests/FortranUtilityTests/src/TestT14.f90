! String not equals to text
function testT14() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = "Hello World"
    passed = .not. (helloWorld%equals("puma"))
end function