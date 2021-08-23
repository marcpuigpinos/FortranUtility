! String not ends with string
function testT12() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld, puma
    
    helloWorld = "Hello World"
    passed = .not. (helloWorld%endsWith(puma))
end function