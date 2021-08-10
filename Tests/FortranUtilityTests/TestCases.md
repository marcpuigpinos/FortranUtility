# Fortran Utility Test Cases.

## fu_mString

### Module procedures tests

#### Test M1: Comparison of two strings.
- Initialize one string with text "Hello".
- Iinitialize a second string with text "Hello".
- Compare them by using "==" operator.
- Test passed: True.
- Test failed: False.

#### Test M2: Comparison of a string and text.
- Initialize one string with text "Hello".
- Compare the string with the text "Hello" by using "==" operator.
- Test passed: True.
- Test failed: False.

#### Test M3: Comparison of text and string.
- Initialize one string with text "Hello".
- Compare the text "Hello" with the string by using "==" operator.
- Test passed: True.
- Test failed: False.

#### Test M4: Assignment operator with empty text.
- Declare a string object.
- Initialize it by assigning the text "".
- Call the object method isEmpty() and check the return value.
- Test passed: True.
- Test failed: False.

#### Test M5: Assignment operator with text.
- Declare a string object.
- Initialize it by assigning the text "Hello".
- Compare the string with the text "Hello".
- Test passed: True.
- Test failed: False.

#### Test M6: Assignment operator with string.
- Initialize a string object with text "Abomination".
- Declare a string object.
- Assign to the second string object, the first string object.
- Compare the two strings and check the return value.
- Test passed: True.
- Test failed: False.

#### Test M7: Append string and string with + operator.
- Initialize a string object with text "Hello ".
- Initialize a second string object with text "world!.".
- Declare a third string object and assign it to the sum of the other two.
- Compare the third string with text "Hello world!.".
- Test passed: True.
- Test failed: False.

#### Test M8: Append string and text with + operator.
- Initialize a string object with text "Hello ".
- Declare a string string object and assign it to the sum of the first string and the text "world!.".
- Compare the second string with text "Hello world!."
- Test passed: True.
- Test failed: False.

#### Test M9: Append text and string with + operator.
- Initialize a string object with text "world!.".
- Declare a string object and assign it to the sum of the text "Hello " and the string.
- Compare the second string with text "Hello world!."
- Test passed: True.
- Test failed: False.

#### Test M10: Substract a text from a string with - operator.
- Initialize a string object with text "Hello world!.".
- Declare a string object and assign it to the substraction of the string and the text "!".
- Compare the second string with the text "Hello world.".
- Test passed: True.
- Test failed: False.

#### Test M11: Substract a string from a string with - operator.
- Initialize a string object with text "Hello world!.".
- Initialize a second string object with text "!".
- Declare a string object and assign it to the substraction of the first string and the second one.
- Compare the third string with the text "Hello world.".
- Test passed: True.
- Test failed: False.

### fu_string tests

#### Test T1: Get text of the string.
- Initialize string object with text "Hello World!".
- Call string method getText() and compare with text "Hello World!".
- Test passed: True.
- Test failed: False.

#### Test T2: Get length of the string.
- Initialize string object with text "Hello World!".
- Call string method getLength() and compare with len("Hello World!").
- Test passed: True.
- Test failed: False.

#### Test T3: Concatenate text to a string.
- Initialize a string object with text "Hello, ".
- Call string method concat and pass the argument "Gisel.".
- Get the text of the string and compare it with "Hello, Gisel.".
- Test passed: True.
- Test failed: False.

#### Test T4: Concatenate string to a string
- Initialize a string object with text "Hello, ".
- Initialize another strign object with text "Biel."
- Call string method concat from first string object, and pass the second string object as argument.
- Get the text of the first string object and compare it with "Hello, Biel.".
- Test passed: True.
- Test failed: False.

#### Test T5: String contains text.
- Initialize a string with text "Hello World".
- Call string method contains and pass the text argument "World".
- Test passed: True.
- Test failed: False.
- 
#### Test T6: String not contains text.
- Initialize a string with text "Hello World".
- Call string method contains and pass the text argument "Puma".
- Test passed: False.
- Test failed: True.

#### Test T5: String contains string.
- Initialize a string with text "Hello World".
- Initialize a second string with text "World"
- Call first string method contains and pass the second string as argument.
- Test passed: True.
- Test failed: False.
- 
#### Test T6: String not contains text.
- Initialize a string with text "Hello World".
- Initialize a second string with text "Puma"
- Call first string method contains and pass the second string as argument.
- Test passed: False.
- Test failed: True.