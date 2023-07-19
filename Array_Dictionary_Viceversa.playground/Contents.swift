import UIKit

var greeting = "Array and dictionary"

var sample : [[String: String]]  = [
                                     ["name" : "shyam",
                                      "surname" : "buhecha"
                                     ],
                                     ["name" : "darshan",
                                      "surname" : "dangar"
                                     ],
                                     ["name" : "subham",
                                      "surname" : "bhatt"
                                     ]
                                   ]

print(sample.dropFirst())
print(sample.dropLast())
var n122 : [String:String] = ["name": "b","surname" : "c"]
//sample.insert(contentsOf: n122, at: sample.index(sample.startIndex, offsetBy: 1))
sample[2]["surname"] = "abcd"
print(sample)

//array of dictionary

var arrofdics : [[Int : String]] = [
                                     [1 : "one" , 2 : "two", 3 : "three"],
                                     [4 : "four", 5 : "five", 6 : "six"],
                                     [7 : "seven", 8 : "eight", 9 : "nine"]
                                   ]
print(type(of: arrofdics))

arrofdics[2][8] = "EIGHT"
print(arrofdics[2][8]!)


print()

//print all dictionary of dictionary

for dictionary in arrofdics{
    print(dictionary)
}
 
print()

//print all key and value from array of dictionary
for dictionary in arrofdics{
    for (i,v) in dictionary.sorted(by: <){
        print("key - \(i) value - \(v) ")
    }
}

print()

for dictionary in arrofdics{
    
   // print(Array(dictionary.keys))
    for i in dictionary.keys.sorted(){
       
        print(i)
        
    }
    
}

var users = [
    "first"  : "a", "second" : "b"
]

users["new"] = "new"

print(users)
//for i in users{
//    users["first"] = "new"
//}
//print(users)

var listOfNumbers = [1,2,3,10,100]

//for i in listOfNumbers.enumerate{
//    print(i)
//}

//
var myarr : [Int] = [1,2,3,4,5,6,7,18]
print("count : \(myarr.count)")
print("capacity : \(myarr.capacity)")
print("distance 1 to 4 : \(myarr.distance(from: 1, to:4))")
print("hashvalue : \(myarr.hashValue)")
print("random element : \(myarr.randomElement() ?? 0)")
print("poplast : \(myarr.popLast() ?? 0)")


// array of dictionary

var users1 : [[String: String]]  = [
                                     ["name" : "shyam",
                                      "surname" : "buhecha"
                                     ],
                                     ["name" : "darshan",
                                      "surname" : "dangar"
                                     ],
                                     ["name" : "subham",
                                      "surname" : "bhatt"
                                     ]
                                   ]

//fetch name and store in array from array of dictionary
var name_arr : [String] = []
for i in users1{
    name_arr.append(i["name"]!)
   
}
print(name_arr)

//fetch surname and store in array from array of dictionary
var surname_arr : [String] = []
for i in users1{
    surname_arr.append(i["surname"]!)
   
}
print(surname_arr)

//
for var i in users1{
    i["name"] = "New"
}
print(users1)

//array of dictionary
var arrofdict : [[Int : String]] = [ [1 : "A",2 : "B"],
                                     [1: "C",2 : "D"],
                                     [1 : "E",2 : "F"]
                                   ]

//insert into array of dictionary
arrofdict.insert([1 : "M", 2 : "N"], at: 1)

print(arrofdict)
 
///get a specific value
print(arrofdict[2].values.first!)              ///
//remove into array of dictionary

print("before removing element : \(arrofdict)")

var index3 = arrofdict.index(arrofdict.startIndex, offsetBy: 0)
arrofdict.remove(at: index3)
print("after removing element : \(arrofdict)")

//


print(arrofdict)

//merge dicsnary

var dictionary1 : [String : String] = ["a" : "b","c" : "d","e" : "f"]

var dictionary2 : [String: String] = ["1 ": "ball","2" : "call","3": "mall"]

dictionary1.merge(dictionary2){(current,_) in current}
                  print(dictionary1)


dictionary1.removeValue(forKey: "a")
print(dictionary1)

//sort dictionary

let sortdics = Array(dictionary2).sorted(by: <)
print(sortdics)


//dictionary of array

var dicsofarr : [Int : [String]] = [
                                        1 : ["a","b","c"],
                                        2 : ["d","e","f"],
                                        3 : ["g","h","i"]
                                   ]

//print keys array from dictionary of array
print(Array(dicsofarr.keys).sorted())

//print values array from dictionary of array
print(Array(Array(dicsofarr.values)))

var singlevalarr : [String] = []
for arr in dicsofarr.values{
    singlevalarr += arr
}
print("new combine array of dict. of arr vlaues : \(singlevalarr.sorted())")

//
dicsofarr.updateValue(["x","y","z"], forKey: 2)
print(dicsofarr)

var dict2 : [Int : Int] = [1 : 11, 2 : 22,3:33 ,4 :44]
print(type(of: dict2))
print(dict2.sorted(by: <))

dict2.updateValue(111, forKey: 4)
print(dict2)


var d1 : [[String:String]] = [
                              ["a" : "b","c" : "d"],
                              ["e" : "f", "g" : "h"]
                             ]
                                
                                
                                
                             
print(d1)
for dics in d1{
    for i in dics.values{
        print(i)
    }
}
var bbb : Int! = nil
bbb = 5
print(bbb!)

print(d1[1]["g"] ?? " ")
        
var names : [String : [String]] = [ "name" : ["shyam","darshan","subham"]]

print(names.values)

print("name : {")
for i in names.values{
  
    for j in i{
        print(j)
    }
}
print("}")

var arr12 : [Int] = [1,2,3]
print(arr12.index(of: 4))
print(arr12.firstIndex(of: 6))



