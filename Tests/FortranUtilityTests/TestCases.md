# Fortran utility Test Cases.

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
- Declare a fu_string object.
- Initialize it by assigning the text "".
- Call the object method isEmpty() and check the return.
- Test passed: True.
- Test passed: False.

#### Test M5: Assignment operator with text.
- Declare a fu_string object.
- Initialize it by assigning the text "Hello".
- Compare the string with the text "Hello".
- Test passed: True.
- Test passed: False.

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