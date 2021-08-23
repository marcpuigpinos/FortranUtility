! String not contains string
function testT8() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld, puma
    
    helloWorld = "HelloWorld"
    puma = "Puma"
    passed = .not. (helloWorld%contains(puma))
end function