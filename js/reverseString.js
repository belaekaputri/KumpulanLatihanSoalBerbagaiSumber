//freecodecamp
function reverseString(str) {
    var newString = "";
    for (var i = str.length - 1; i >= 0; i--) { 
        newString += str[i]; // or newString = newString + str[i];
    }
    return newString; // "olleh"
}
 
reverseString('hello');