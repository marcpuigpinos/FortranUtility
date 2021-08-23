! String equals ignoring case to text.
function testT17() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    
    helloWorld = "Hello World"
    passed = helloWorld%equalsIgnoreCase("hElLo wOrLd")
end function