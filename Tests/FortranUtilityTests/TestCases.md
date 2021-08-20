# Fortran Utility Test Cases.

## fu_mString

### Module procedures tests

#### Test M1: Comparison of two strings.
- Initialize one string with text "Hello".
- Iinitialize a second string with text "Hello".
- Compare them by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M2: Comparison of a string and text.
- Initialize one string with text "Hello".
- Compare the string with the text "Hello" by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M3: Comparison of text and string.
- Initialize one string with text "Hello".
- Compare the text "Hello" with the string by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M4: Assignment operator with empty text.
- Declare a string object.
- Initialize it by assigning the text "".
- Call the object method `obj%isEmpty()` and check the return value.
- Test passed: True.
- Test failed: False.

#### Test M5: Assignment operator with text.
- Declare a string object.
- Initialize it by assigning the text "Hello".
- Compare the string with the text "Hello" by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M6: Assignment operator with string.
- Initialize a string object with text "Abomination".
- Declare a string object.
- Assign to the second string object, the first string object.
- Compare the two strings and check the return value by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M7: Append string and string with + operator.
- Initialize a string object with text "Hello ".
- Initialize a second string object with text "world!.".
- Declare a third string object and assign it to the sum of the other two.
- Compare the third string with text "Hello world!." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M8: Append string and text with + operator.
- Initialize a string object with text "Hello ".
- Declare a string string object and assign it to the sum of the first string and the text "world!.".
- Compare the second string with text "Hello world!." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M9: Append text and string with + operator.
- Initialize a string object with text "world!.".
- Declare a string object and assign it to the sum of the text "Hello " and the string.
- Compare the second string with text "Hello world!." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M10: Substract a text from a string with - operator.
- Initialize a string object with text "Hello world!.".
- Declare a string object and assign it to the substraction of the string and the text "!".
- Compare the second string with the text "Hello world." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test M11: Substract a string from a string with - operator.
- Initialize a string object with text "Hello world!.".
- Initialize a second string object with text "!".
- Declare a string object and assign it to the substraction of the first string and the second one.
- Compare the third string with the text "Hello world." by using `==` operator.
- Test passed: True.
- Test failed: False.

### fu_string tests

#### Test T1: Get text of the string.
- Initialize string object with text "Hello World!".
- Call string method `obj%getText()` and compare with text "Hello World!" by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test T2: Get length of the string.
- Initialize string object with text "Hello World!".
- Call string method `obj%getLength()` and compare with `len("Hello World!")` by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test T3: Concatenate text to a string.
- Initialize a string object with text "Hello, ".
- Call string method `obj%concat(arg)` and pass the argument "Gisel.".
- Compare the string object with the text "Hello, Gisel." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test T4: Concatenate string to a string
- Initialize a string object with text "Hello, ".
- Initialize another strign object with text "Biel."
- Call string method `obj%concat(arg)` from first string object, and pass the second string object as argument.
- Compare the string object with the text "Hello, Biel." by using `==` operator.
- Test passed: True.
- Test failed: False.

#### Test T5: String contains text.
- Initialize a string object with text "Hello World".
- Call string method `obj%contains(arg)` and pass the text argument "World".
- Test passed: True.
- Test failed: False.
 
#### Test T6: String not contains text.
- Initialize a string object with text "Hello World".
- Call string method `obj%contains(arg)` and pass the text argument "Puma".
- Test passed: False.
- Test failed: True.

#### Test T5: String contains string.
- Initialize a string object with text "Hello World".
- Initialize a second string object with text "World".
- Call first string method `obj%contains(arg)` and pass the second string as argument.
- Test passed: True.
- Test failed: False.

#### Test T6: String not contains text.
- Initialize a string object with text "Hello World".
- Initialize a second string object with text "Puma".
- Call first string method `obj%contains(arg)` and pass the second string as argument.
- Test passed: False.
- Test failed: True.

#### Test T7: String ends with text.
- Initialize string object with text "Hello World".
- Call the string method `obj%endsWith(arg)` and pass the argument "World".
- Test passed: True.
- Test failed: False.

#### Test T8: String not ends with text.
- Initialize string object with text "Hello World".
- Call the string method `obj%endsWith(arg)` and pass the argument "puma".
- Test passed: False.
- Test failed: True.

#### Test T9: String ends with string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "World".
- Call the first string method `obj%endsWith(arg)`and pass the second string as argument.
- Test passed: True.
- Test failed: False.

#### Test T10: String not ends with string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "puma".
- Call the first string method `obj%endsWith(arg)`and pass the second string as argument.
- Test passed: False.
- Test failed: True.

#### Test T11: String equals to text.
- Initialize a string object with text "Hello World".
- Call the string method `obj%equals(arg)` and pass as argument the text "Hello World".
- Test passed: True.
- Test failed: False.

#### Test T12: String not equals to text.
- Initialize a string object with text "Hello World".
- Call the string method `obj%equals(arg)` and pass as argument the text "puma".
- Test passed: False.
- Test failed: True.

#### Test T13: String equals to string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "Hello World".
- Call the first string method `obj%equals(arg)`and pass the second string as argument.
- Test passed: True.
- Test failed: False.

#### Test T14: String not equals to string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "puma".
- Call the first string method `obj%equals(arg)`and pass the second string as argument.
- Test passed: False.
- Test failed: True.

#### Test T15: String equals ignoring case to text.
- Initialize a string object with text "Hello World".
- Call the string method `obj%equalsIgnoreCase(arg)` and pass as argument the text "hElLo wOrLd".
- Test passed: True.
- Test failed: False.

#### Test T16: String not equals ignoring case to text.
- Initialize a string object with text "Hello World".
- Call the string method `obj%equalsIgnoreCase(arg)` and pass as argument the text "pUmA".
- Test passed: False.
- Test failed: True.

#### Test T17: String equals ignoring case to string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "hElLo wOrLd".
- Call the first string method `obj%equalsIgnoreCase(arg)`and pass the second string as argument.
- Test passed: True.
- Test failed: False.

#### Test T18: String not equals ignoring case to string.
- Initialize string object with text "Hello World".
- Initialize a second string object with text "pUmA".
- Call the first string method `obj%equalsIgnoreCase(arg)`and pass the second string as argument.
- Test passed: False.
- Test failed: True.

#### Test T19: String is empty.
- Initialize a string object by default.
- Call string method `obj%isEmpty()`.
- Test passed: True.
- Test failed: False.

#### Test T20: String is not empty.
- Initialize a string object with text "Hello".
- Call string method `obj%isEmpty()`.
- Test passed: False.
- Test failed: True.

#### Test T21: String upcase.
- Initialize a string object with text "hello".
- Call string method `obj%upcase()`.
- Compare the string with the text "HELLO" by using the `==` operator.
- Test passed: True.
- Test failed: False.

#### Test T22: String downcase.
- Initialize a string object with text "HELLO".
- Call string method `obj%downcase()`.
- Compare the string with the text "hello" by using the `==` operator.
- Test passed: True.
- Test failed: False.

