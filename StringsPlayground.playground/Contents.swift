import UIKit

var greeting = "Strings playground"
 

//create a string using literals
let string : String = "My name is Shyam"
var str1 : String
str1 = "Hello"

//create string using string instance
var create_str : String = String("new string is created ")

print(create_str)

//in

//multiline string
var multiline_str : String = """
 \" multiline string literal includes all of the lines between its opening and closing quotation marks. The string begins on the first line after the opening quotation marks ( and ends on the line before the closing quotation marks, which means that neither of the strings below start or end with a line break: \"
 """
print(multiline_str)

//
var miltistr = """
The White Rabbit put on his spectacles.                 "Where shall I begin,
please your Majesty?" he asked.

                         "Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

print(miltistr)



print(string)
print(str1)

/*        -----------------------String Operation------------------
 */
//compare string
var str2 : String = "hello, Simform!"
var str3 : String = "hello, Simform!"

print(str2==str3)



// join to string //
 //1.append() - it is combile s2 to s1
var s1 : String = "Happy "
let s2 : String = "Holi!"

s1.append(s2)
print(s1)

print(s1.contains("H"))
 //concatinate a string  using +
var s3 : String = "Happy "
let s4 : String = "Dhuleti!"

print(s3 + s4)


//length of string
 var strLength = "Holi is a\\  \"festival\" of colors"
print(strLength)
print("Length of string is : \(strLength.count)")

//Built-in functions
var empty : String = ""
print(empty.isEmpty)

//
//print(" \(s3.uppercased())")
//print("\(s3.startIndex)")

var change_char : String = "change"

print(change_char)

// print all char of string
var str5 : String = "hello world"

for char in str5{
    print(char)
    
    }

let i = str5.index(str5.startIndex, offsetBy: 7)
let mySubstring = str5[..<i]
print(mySubstring)

//insert a char at specific position
var strnew : String = "abcdefefghijklmnopqustuvwxyz"

strnew.insert("-", at: strnew.index(strnew.startIndex, offsetBy: 3))

print(strnew)
//
var str7 = "ab cdd eff"
str7.insert(contentsOf: "AAAA", at: str7.index(str7.startIndex, offsetBy: 2))
print(str7)

//
strnew.remove(at: strnew.index(strnew.startIndex, offsetBy: 2))

print(strnew)


// string to char array
var mystr = "how are you ?"

var strtoarray = Array(mystr)

print(strtoarray)

//string to words array
var str_to_word_arr : String = "String to word array"
var output = str_to_word_arr.components(separatedBy: " ")
print(output)
print(output.count) //print no. of element in arrays

//substring
var str13 = "good, morning"
var index3 = str13.firstIndex(of: ",") ?? str13.endIndex

var new = str13[..<index3]
print(new)


//let word = "Backwards"
//for char in word.reversed() {
//    print(char, terminator: " ")
//}

//print("\n")
//let word2 = "New String"
//print(word2,terminator: " ")

//revesed() vs reverse

var str11 = "My name"
var result = String(str11.reversed())
print("Original String : \(str11)")
print("Reversed String : \(result)")


//before character
var n1 = "jklmno"

print(n1[(n1.index(before: n1.endIndex))])

//after character
print(n1[n1.index(after: n1.startIndex)])


//substring


//remove
var str12 = "Good afternoon"
print("Before removing : \(str12)")
var index1 = str12.index(str12.startIndex, offsetBy: 6)
str12.remove(at: index1)


print("After removing: \(str12)")

//removeall



var strtoarr = "my name is shyam"
strtoarr.contains("m")

print(strtoarr.components(separatedBy: " "))
//convert array to string
var array = ["how", "are", "you"]

let stringRepresentation = array.joined()

print(stringRepresentation)

//replace single character
var strReplace1 = "bat ball"
var newstr1 = strReplace1.replacingOccurrences(of: "b", with: "c")
print(newstr1)

//replace word with neew word
var strReplace2 = "table ball"
var newstr2 = strReplace2.replacingOccurrences(of: "ball", with: "tenis")
print(newstr2)

// removes whitespace from both ends of a string
var message = "  Swift is fun    "

// remove leading and trailing whitespaces
var newMessage = message.trimmingCharacters(in: .whitespaces)

print(newMessage)


//component count the space in string
var strnew2 = "Good   morning welcome"
print(strnew2.components(separatedBy: " "))

//split is not count the space in string
print(strnew2.split(separator: " "))

//saparator
print("A","B","C",terminator : " ")
print()


//second way to define dictionary
var dic  = Dictionary<Int, String>()
print(type(of: dic))






















