# FortranUtility

## String module

This module contains the string type as well as all the module procedures. Below it is shown a simple example of how to use this moudule and call its procedures.

    use fu_mString

    type(fu_string) :: name 

    name = fu_string("Orange") !Initialize name with "Orange" text.

    name = fu_string() !Default initializer to empty string.

### Public module procedures

The fu_mString public module procedures are listed below:

- `fu_string`: This is the initializer. It can be used by passing a text or nothing as shown in example above.

- `write`: Given a string, writes the string on screen or unit.

    call write(stringA)

    call write(stringA, unit)

### Operators

- `=`: Assigns the value of one string to another.

    stringB = stringA

- `==`: Compares one string to another or a string to a text.

    equal = stringA == stringB

    equal = stringA == "Some text"

- `+`: Concatenates two strings or a string and some text.

    stringC = stringA + stringB

    stringC = stringA + "Some text"

- `*`: Repeat the string as many times as the scalar number is multiplied with. The scalar number must be an integer.

    stringA = fu_string("Hello")
    
    stringB = 3 * stringA
    
    call write(stringB)

    output:
    
    HelloHelloHello

- `-`: Substracts a string or text from another string.

    stringA = fu_string("Hello, this is my home")

    stringB = fu_string("home")

    stringC = stringA - stringB

    or

    stringC = stringA - "home"

    call write(stringC)

    output:

    "Hello, this is my "

### Type bound procedures

The string type contains the following procedures:

- `getText`: Returns the text of the object string. 
                 
- `getLength`: Returns the length of the object string text.

- `charAt`: Returns the character at some index of the string object. 
      
- `concat`: Given a string or a text, the object string is concatenated with the inputs.
  
    call stringA%concat(stringB)
  
    call stringA%concat("Some Text")

                                                    
- `contains`: Given a string or a text, returns if it is contained by the object string.

    found = stringA%concat(stringB)
  
    found = stringA%concat("text")
                                                     
- `endsWith`: Given a string or a text, returns if the object string ends with the given arguments.
  
    ends = stringA%endsWith(stringB)
  
    ends = stringA%endsWith("text")    
                    
- `equals`: Given a string or a text, returns a true if the inputs are equal to the object string. 
                 
- `equalsIgnoreCase`: Same than equals, but ignoring the case of the characters.          
                         
- `isEmpty`: Returns if the object is empty.

- `upcase`: Upcase all characters of the object.

- `downcase`: Downcase all characters of the object.

- `write`: Writes the object on screen or unit.

    call string%write()
  
    call string%write(unit)
