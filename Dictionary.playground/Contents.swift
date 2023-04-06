import UIKit

var greeting = "Dictionary"

//creating a empty dictionary
var empty_dictionary : [Int:String] = [:]

//creating a dictionary
var dictionary : [Int : String] = [1 : "A",2 : "B",3 : "C",4:"D"]
print(dictionary)


// this is return sequence of character
for (index,value) in dictionary{
    print("\(index) : \(value)")
}

print()
//if we access only value from above method
for (_,value) in dictionary{
    print("\(value)")
}


//
var disc : NSDictionary = ["Shyam": "Buhecha", "Darshan" : "Dangar" , "Shubham" : "Bhatt"]
print(type(of: disc))
print(disc)

//update
var id : [String:String] = ["Shyam": "Buhecha", "Darshan" : "Dangar" , "Shubham" : "Bhatt"]
id.updateValue("b.", forKey: "Shyam")
print(id)
id.updateValue("new added", forKey: "A")
print(id)

//
print(id.count)

//
if id.isEmpty {
    print("Yes")
}else{
    print("No")
}

//print all keys
for index in id.keys{
    print("index : \(index)")
}
//keys array
var i_arr = Array(id.keys)
print(i_arr)

//values array
var v_arr = Array(id.values)
print(v_arr)

print()

//print all values
for value in id.values{
    print("value : \(value)")
}

//dict. to keys array

var key_arr = [String](id.keys)
print("\n keys array : \(key_arr)")

//disc. to value array
var value_arr = [String](id.values)
print("\n value array : \(value_arr)")

//forEach - it is iterate all element
print("-------forEach-------")
id.forEach { i in
    print(i)
}

//
//id.keys.forEach(){i in
//    print(i)
//}

//get random element
print()
print(id.randomElement()!)

//insert
id["name"] = "surname"
print(id)


//remove
id.remove(at: id.startIndex)
print(id)

//remove value
id.removeValue(forKey: "name")
print(id)

//remove all

var newid : [Int:String] = [1:"A",2:"B",3:"C"]
newid.removeAll()
print(newid)
print(newid.count)

var newid2 : [Int:String] = [1:"A",2:"B",3:"C"]
newid2.removeAll(keepingCapacity: true)
print(newid2)
print(newid2.count)

//replace value
var replace_element : [Int:String] = [1:"A",2:"B",3:"C"]
replace_element[2] = "REPLACE"
print(replace_element)

//merge to dictionary

var disc1 : [Int:String] = [1:"A",2:"B",3:"C"]
var disc2 : [Int : String] = [4:"D",5:"E"]

//disc1.merge(disc2){(current,_) in current}
//
//print(disc1)

disc1.merge(disc2){(current,_) in current}
print(disc1)

//sort
disc1.sorted(by: >)
print(disc1)

print("\n------------------array of dictionary-----------------\n")
//array of dictionary
var arrofdict : [[Int : String]] = [ [1 : "A",2 : "B"],
                                     [1: "C",2 : "D"]
                                   ]

//insert into array of dictionary
arrofdict.insert([1 : "M", 2 : "N"], at: 1)

print(arrofdict)



var strn : String = "abcffdsa"
print(strn.prefix(2))
      print(strn.suffix(4))










print(arrofdict)

print("\n------------------dictionary of array-----------------\n")
//dictionary of array
var dicttoarr : [ Int : [String] ] = [
                                         1 : ["first","second","third"],
                                         2: ["four","fifth","six"],
                                         3	 : ["seven","Eight","nine"]
                                       ]


print(dicttoarr)

for i in dicttoarr {
 
    
    print()
    
    for j in i.value{
        print()
    }
}












//dictionary of string and array
var mydict : [String : [Int]] = [ "first" : [1,2,3] ,
                                  "Second" : [4,5,6] ,
                                  "third" : [7,8,9]
                                ]
print(mydict)








