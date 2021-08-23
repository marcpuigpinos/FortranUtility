! Substract a text from a string with - operator
function testM10() result(passed)
    use fu_mDataType
    use fu_mString
    logical(fu_lgtype) :: passed
    type(fu_string)    :: sentence, sentenceRemoved
    
    sentence = fu_string("Hello world!.")
    sentenceRemoved = sentence - "!"
    passed = sentenceRemoved == "Hello world." 
end function