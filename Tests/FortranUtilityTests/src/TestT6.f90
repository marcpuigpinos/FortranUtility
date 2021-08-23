! String not contains text.
function testT6() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: helloWorld
    helloWorld = "Hello World"
    passed = .not. (helloWorld%contains("Puma"))
end function