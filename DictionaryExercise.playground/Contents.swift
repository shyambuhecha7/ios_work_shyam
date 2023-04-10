import UIKit

var greeting = "Hello, playground"
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
var arrayChar : [Character] =  Array(encodedMessage)

var output = encodedMessage.map(
    { index in
    code.first(where: {String(index) == $0.key})?.value ?? " "
    }
).joined()
print(output)

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

for dictionary in people{
    var fName = dictionary["firstName"]
    firstName.append(fName ?? "")
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
for dictionary in person{
    var tempFullName = String(dictionary["firstName"] ?? "") + " " + String(dictionary["lastName"] ?? "")
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

for index in outputLeaderboard{
    print("\(i["firstName"] ?? " ") \(index["lastName"] ?? " ") - \(index["score"] ?? " ")")
}
print(outputLeaderboard)
