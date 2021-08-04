# FortranUtility

## String module

### Module procedures

### Type bound procedures

- getText: Returns the text of the object string.                  
- getLength: Returns the length of the object string text.
- charAt: Returns the character at some index of the string object.       
- concat: Given a string or a text, the object string is concatenated with the inputs.
  call stringA%concat(stringB) or call stringA%concat("Some Text")                                                       
- contains: Given a string or a text, returns if it is contained by the object string.
  found = stringA%concat(stringB) or found = stringA%concat("text")                                                     
- endsWith: Given a string or a text, returns if the object string ends with the given arguments.
  ends = stringA%endsWith(stringB) or ends = stringA%endsWith("text")                           
- equals: Given a string or a text, returns a true if the inputs are equal to the object string.                  
- equalsIgnoreCase: Same than equals, but ignoring the case of the characters.                                   
- isEmpty: Returns if the object is empty.
- upcase: Upcase all characters of the object.
- downcase: Downcase all characters of the object.
- write: Writes the object on screen or unit.
  call string%write() or call string%write(unit)
