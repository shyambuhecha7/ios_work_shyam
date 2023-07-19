import UIKit

var greeting = "Basic swift exercise"

//Variables

//1. Create variables of different types and print it

var int : Int = 10
print(int)

var char : Character = "a"
print(char)

var float : Float = 1.1
print(float)

var double : Double = 1.2
print(double)

var str : String = "String"
print(str)

//2.Create one integer and perform addition with 5 to that and print values
 
var num : Int = 10
print("after adding 5 into \(num) :  \(num + 5)")

//3.There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration

let interest_rate : Int = 15
var amount : Float = 10000
var duration : Float = 2
var interest : Float = 0

interest = (Float(interest_rate) *  duration * amount)/100
print(" Interest Rate : \(interest_rate) \n Amount : \(amount) \n Duration : \(duration) \n Total interest : \(interest)")

//Operator

//1.Create example for String concate using operators
var concate_str1 : String = "Hello "
var concate_str2 : String = "World"

print("concate two string using + operator : \(concate_str1 + concate_str2)")

//2.Create one example for show usage of operator's addition, multiplication, division for integers and floats

var n1 : Int = 20
var n2 : Int = 10

print("<: Addition of Int :> Number 1 : \(n1) Number 2 : \(n2) Answer : \(n1 + n2)")
print("<: Multiplication Int :> Number 1 : \(n1) Number 2 : \(n2) Answer : \(n1 * n2)")
print("<: Division Int :> Number 1 : \(n1) Number 2 : \(n2) Answer : \(n1 / n2)")


var n3 : Float = 200.12
var n4 : Float = 10.34

print("<: Addition of Float :> Number 1 : \(n3) Number 2 : \(n4) Answer : \(n3 + n4)")
print("<: Multiplication of Float :> Number 1 : \(n3) Number 2 : \(n4) Answer : \(n3 * n4)")
print("<: Division  of Float :> Number 1 : \(n3) Number 2 : \(n4) Answer : \(n3 / n4)")



//3.What is turnery operator and show example of usage?
"""
  Turnery operator : It is contain Three operant.
     syntex : condition  Answer 1 
    --> it is check first condition . if it's true than execute first answer otherwise second answer.

"""
let num1 : Int = 1000
let num2 : Int = 200
num1 > num2 ? print("Number 1 - \(num1) is larger than Number 2 :\(num2)") : print("Number 1 - \(num1) is smaller than Number 2 :\(num2)")

//work with text

//1.Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.

var strName : String = "Simform"

if (strName.count >= 2){
    var i = strName.index(strName.startIndex, offsetBy: 2)
    print(strName[..<i])
}else{
    print("string \"\(strName)\" length is shorter than 2")
}

//2.Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2. Input : "Simform" Output : "imfor

var strInput : String = "Simform"

strInput.remove(at: strInput.startIndex)
strInput.remove(at: strInput.index(before: strInput.endIndex))

var strOutput : String = strInput
print(strOutput)

//3.Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given "strings length must be at least 1". //Input: "Swift", "Examples" Output: wiftxamples

var strFirst : String = "Swift"
var strSecond : String = "Examples"

if (strFirst.count >= 1 && strSecond.count >= 1){
    var i  = strFirst.startIndex
    strFirst.remove(at: i)
    strSecond.remove(at: i)
    var newConcateStr : String = strFirst + strSecond

    print(newConcateStr)
}else{
    print("strings length less than 1")
}


//4.Write a Swift program to test if a given string starts with "Sw". Input: Swift  Output: true

var strInput1 : String = "Swift"
var secIndex = strInput1.index(after: strInput1.startIndex)

if(strInput1[str.startIndex...secIndex] == "Sw"){
    print(true)
}else{
    print(false)
}

//5.Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n. Input: “Simform Solutions”, 3  Output: Simons

var strInput2 : String = "Simform Solutions"

var newOutputStr : String = String(strInput1.prefix(3) + strInput2.suffix(3))

print(newOutputStr)

//6.Try all string methods: https://developer.apple.com/documentation/swift/string

var strTest1 : String = "Good Morning"
var strTest2 : String = "Hello"

 // concatinate
 print(strTest1 + strTest2)
 //compare
 print(strTest1 == strTest2)
 //substring
var subStr = strTest1.firstIndex(of: " ") ?? strTest1.endIndex
print(strTest1[..<subStr]) //1st way

print(strTest1.substring(to: subStr)) //second way

 //string character count and character array
 print("strTest1 character counf : \(strTest1.count)")
 
 print("strTest1 character array : \(Array(strTest1))")
  
 //empty str
print(strTest1.isEmpty)

 //append string
strTest1.append(strTest2)

var strTestIndex  = strTest1.endIndex
strTest1.insert("!", at: strTestIndex) // add single character to string
print(strTest1)

strTest1.insert(contentsOf: " Sir", at: strTestIndex) // add String to specific position in string
print(strTest1)

//remove
var strRemove : String = "Remove Operation"
var strRmIndex = strRemove.index(strRemove.startIndex, offsetBy: 4)
strRemove.remove(at: strRmIndex)

strRemove.removeFirst() //first char remove
print(strRemove)

strRemove.removeLast() //remove last character
print(strRemove)

//replace sub renge
strRemove.replaceSubrange(..<strRmIndex, with: "A")
print(strRemove)

//upercase lowetcase
var upperToLower : String = "CHANGE"
print(upperToLower.uppercased())
var lowerToUper: String = "change"
print(lowerToUper.lowercased())

//hasPrefix and hasSufix

var str1 : String = "abc"
print(str1.hasPrefix("a"))
print(str1.hasSuffix("c"))

//contain
print(str1.contains("b"))

//reverse
print(Array(str1.reversed()))

//sort
var strSortInc : String = "sort"
print(Array(strSortInc.sorted()))
print(Array(strSortInc.sorted(by: <)))
var strSortDic : String = "sort"
print(Array(strSortDic.sorted(by: >)))


//Control Flow :

//1
/*
1) Print the powers of 2 that are less than or equal to N.

Input:

var N = 100

Output:

2

8

16

32

64
*/
//ans :
var N = 100
var power = 1
for _ in 1...N {
    power = 2 * power
    if (power<N){
        print(power)
    }else{
        break
    }
}

//2
/*
2) Given an integer N draw a square of N x N asterisks. Look at the examples.

Input:

var N = 3

Output:

***

***

***

*/
//solution :
 
var N1 = 3

for _ in 1...N1{
    for _ in 1...N1{
        print("*",terminator: "")
    }
    print()
}

//3
/*
3) Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.

Input:

var N = 4

Output:

*

**

***

****
*/
//solution
var N2 : Int = 4
for i in 1...N2{
    for _ in 1...i{
       print("*",terminator: "")
    }
    print()
}

//4
/*
 4) Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.

 Input:

 var N = 4

 Output:
   *
  ***
 *****
*******
 
 */
//solution :
var N5 : Int = 4

for  i in 1...N5{
    print()
    for _ in 0...N5-i{
        print(" ",terminator: "")
    }
    for _ in 1...i*2-1{
        print("*",terminator: "")
    }
   
}
//5
/*
 
 5)You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).

 Input:

 var number = 17

 Output:

 prime //17 is only divisible by 1 and 17
 */
//Solutions :

print("\n")



var bool_prime : Bool = false;

let number2 : Int = 17;

for i in 2...number2-1{

if(number2 % i == 0){

bool_prime = false

break;

}

}

if bool_prime == false {

print("\(number2 ) prime");

} else {

print("\(number2 ) not prime");

}




//Arrays
//1.
/*
 1.Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

 Input: [1,2,3,1]

 Output: true
 */
//solution:

var array : [Int] = [1,2,3,1]

var bool : Bool = true

if(array.count<1){
    print("array is empty and array lenth is smaller than 1")
}else if(array.first == array.last){
    print(bool)
}else{
  print("not matched")
}

//2.
/*
 Write a Swift program to create a new array with double the length of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.

 Input: [1,2,3,4]

 Output: [0,0,0,0,0,0,0,4]
 
 */
var arrInp : [Int] = [1,2,3,4]

var arrOutput = Array(repeating: 0, count: arrInp.count*2)
arrOutput[arrOutput.count-1] = arrInp[arrInp.count-1]
print(arrOutput)

//3.
/*
 Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array

 Input: [0,1,2,3]

 Output: [0,1]
 */
var arrFirst : [Int] = [0,1,2,3]
var arrFirstOut : [Int] = []

if(arrFirst.isEmpty){
    print("array is empty")
    
}else if(arrFirst.count < 2){
    arrFirstOut.append(arrFirst[0])
    print(arrFirstOut)
}else{
    arrFirstOut.append(contentsOf: arrFirst[0...1])
    print(arrFirstOut)
}


//4.
/*
 Write a Swift program to take one array and find out maximum number from that array

 Input: [0,50,100,20,80,150]

 Output: 150
 */
var arrEx5 : [Int] = []


//i have use optional binding beacause sometime array is empty and we can use array.max() method that time error occur.this problem solve by optional.
var maxValue : Int? = arrEx5.max()

if let a : Int = maxValue{
    print("Maximum number of array \(arrEx5) is : \(a)")
}else{
    print("array is empty")
}

//5.
/*
 Write a Swift program to take one array and sort it in descending order.

 Input: [0,5,6,2,10]

 Output: [10,6,5,2,0]
 */

var unSortArr : [Int] = [0,5,6,2,10]
var sortArr : [Int] = unSortArr.sorted(by: >)
print(sortArr)

//6.
/*
 Print all the numbers from listOfNumbers that are divisible by at least one number from divisors

 Input: var listOfNumbers = [1, 2, 3, 10, 100]

 var divisors = [2, 5]

 Output: 2,10,100
 */
var listOfNumbers : [Int] = [1, 2, 3, 10, 100]
var divisors : [Int] = [2, 5]


for i in 0...listOfNumbers.count-1{
    if(listOfNumbers[i]%divisors[0]==0 || listOfNumbers[i]%divisors[1]==0){
        print(listOfNumbers[i],terminator: " ")
    }
}


//7.
/*
 Try all Array methods: new
 */
var sample : [Int] = [0,11,12,13,14,15,16,17,18]

sample.remove(at: 2)
print(sample)

sample.removeLast()
print(sample)

print(array.first)

print(array.capacity)

print(array.contains(1)) //true

print(array.distance(from: 11, to: 17))


//dictionary
/*
 1) You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
 
 var code = [

 "a" : "b",

 "b" : "c",

 "c" : "d",

 "d" : "e",

 "e" : "f",

 "f" : "g",

 "g" : "h",

 "h" : "i",

 "i" : "j",

 "j" : "k",

 "k" : "l",

 "l" : "m",

 "m" : "n",

 "n" : "o",

 "o" : "p",

 "p" : "q",

 "q" : "r",

 "r" : "s",

 "s" : "t",

 "t" : "u",

 "u" : "v",

 "v" : "w",

 "w" : "x",

 "x" : "y",

 "y" : "z",

 "z" : "a"

 ]

 var encodedMessage = "uijt nfttbhf jt ibse up sfbe"

 Output: “this message is hard to read”
 */
//ans :

var code : [String : String] = [
    
    "b" : "a",

    "c" : "b",

    "d" : "a",

    "e" : "d",

    "f" : "e",

    "g" : "f",

    "h" : "g",

    "i" : "h",

    "j" : "i",

    "k" : "j",

    "l" : "k",

    "m" : "l",

    "n" : "m",

    "o" : "n",

    "p" : "o",

    "q" : "p",

    "r" : "q",

    "s" : "r",

    "t" : "s",

    "u" : "t",

    "v" : "u",

    "w" : "v",

    "x" : "w",

    "y" : "x",

    "z" : "y",

    "a" : "z"

    ]


var encodedMessage : String = "uijt nfttbhf jt ibse up sfbe"
var ar : [Character] =  Array(encodedMessage)

var op = encodedMessage.map({ i in
    code.first(where: {String(i) == $0.key})?.value ?? " "
}).joined()
print(op)



//2.
/*
 2) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
 
 var people: [[String:String]] = [

 [

 "firstName": "Calvin",

 "lastName": "Newton"

 ],

 [

 "firstName": "Garry",

 "lastName": "Mckenzie"

 ],

 [

 "firstName": "Leah",

 "lastName": "Rivera"

 ],

 [

 "firstName": "Sonja",

 "lastName": "Moreno"

 ],

 [

 "firstName": "Noel",

 "lastName": "Bowen"

 ]

 ]

 Output: firstNames = ["Calvin","Garry","Leah","Sonja","Noel"]
 */
var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]

var firstName : [String] = []

for dics in people{
    var temp = dics["firstName"]
    firstName.append(temp ?? "")
}

print(firstName)


//3.
/*
 3) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
 
 var people: [[String:String]] = [

 [

 "firstName": "Calvin",

 "lastName": "Newton"

 ],

 [

 "firstName": "Garry",

 "lastName": "Mckenzie"

 ],

 [

 "firstName": "Leah",

 "lastName": "Rivera"

 ],

 [

 "firstName": "Sonja",

 "lastName": "Moreno"

 ],

 [

 "firstName": "Noel",

 "lastName": "Bowen"

 ]

 ]

 Output:

 fullNames = ["Calvin Newton","Garry Mckenzie","Leah Rivera",

 "Sonja Moreno","Noel Bowen"]

 Output:

 fullNames = ["Calvin Newton","Garry Mckenzie","Leah Rivera",

 "Sonja Moreno","Noel Bowen"]
 */

var person : [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]

var fullName : [String] = []
for dics in person{
    var tempFullName = String(dics["firstName"] ?? "") + " " + String(dics["lastName"] ?? "")
    fullName.append(tempFullName)
}

print(fullName)


//4.
/*
 4) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.

 Input:

 var people: [[String:Any]] = [

 [

 "firstName": "Calvin",

 "lastName": "Newton",

 "score": 13

 ],

 [

 "firstName": "Garry",

 "lastName": "Mckenzie",

 "score": 12

 ],

 [

 "firstName": "Leah",

 "lastName": "Rivera",

 "score": 10

 ],

 [

 "firstName": "Sonja",

 "lastName": "Moreno",

 "score": 3

 ],

 [

 "firstName": "Noel",

 "lastName": "Bowen",

 "score": 16

 ]

 ]

 Output:

 Sonja Moreno
 */



var people1: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]
//ans



people1.sort{
    (($0 as Dictionary<String,AnyObject>)["score"] as! Int ) < (($1 as Dictionary<String,AnyObject>)["score"] as! Int  )
}

print("\(people1[0]["firstName"] ?? " ") \(people1[0]["lastName"] ?? " ")   ")




//5.
/*
 5) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:

 1. full name - score

 2. ...

 ...

 Input:

 var people: [[String:Any]] = [

 [

 "firstName": "Calvin",

 "lastName": "Newton",

 "score": 13

 ],

 [

 "firstName": "Garry",

 "lastName": "Mckenzie",

 "score": 23

 ],

 [

 "firstName": "Leah",

 "lastName": "Rivera",

 "score": 10

 ],

 [

 "firstName": "Sonja",

 "lastName": "Moreno",

 "score": 3

 ],

 [

 "firstName": "Noel",

 "lastName": "Bowen",

 "score": 16

 ]

 ]

 Output:

 1. Garry Mckenzie - 23

 2. Noel Bowen - 16

 3. Calvin Newton - 13

 4. Leah Rivera - 10

 5. Sonja Moreno - 3
 */
var people3: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 23

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]

people3.sort{
    (($0 as Dictionary<String,AnyObject>)["score"] as! Int) < (($1 as Dictionary<String,AnyObject>)["score"] as! Int)
}
var outputLeaderboard = people3.reversed()

for i in outputLeaderboard{
    print("\(i["firstName"] ?? " ") \(i["lastName"] ?? " ") - \(i["score"] ?? " ")")
}
print(outputLeaderboard)

//optionals

//1.Create an example of demonstrating How to declare optionals in swift?

var strOp : String?
var strOp2 : String = "string"

//2.What is force unwrapping in optionals show usage in example.
var strWrap : String? = " Shyam" //wrap

print(strWrap!) //force unwrapping

//3.Create one example of show usage of optional binding

var arrOp = [1,2,3,4,5]

var max : Int? = arrOp.max() //some time array is empty that to max() return nil that time use optional to handle the situation

print(max ?? " ")
 
//4.Create one example using if-let

var numInt : Int? = 15

if let temp = numInt{
    print(temp)
}else{
    print("value is nil")
}
//5.Create one example using guard-let

var num21 : Int?

func sum(){
    guard let i = num21 else{
        print("value is nil")
        return
    }
    print(num21)
}

sum()
//6.Create one example using nil colloison operator

var x : String?

print(x ?? "it is nil")

var sttt = "abc"


