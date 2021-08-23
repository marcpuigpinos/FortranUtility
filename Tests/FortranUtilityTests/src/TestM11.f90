! Substract a string from a string with - operator.
function testM11() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: sentence, remove, sentenceRemoved
    
    sentence = fu_string("Hello world!.")
    remove = fu_string("!")
    sentenceRemoved = sentence - remove
    passed = sentenceRemoved == "Hello world."
end function