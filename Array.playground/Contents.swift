import UIKit

var greeting = "Hello, Array playground"

var array : [String] = ["A","B","C"]

//create empty arrray
var emptyArray : [Int] = []
var emt_arr : [Int] = Array()


print("\(emptyArray)")
//
var sample_arr : [Int] = [1,2,3,4,5,6]

print("array : \(sample_arr)")
//element count
print("array lenth : \(sample_arr.count)")


//repeate arr
var rep_arr: [Int] = Array(repeating: 2, count: 3)
print(rep_arr)

//add ele. at end


array.append("E")
array.append("D")
print(array)

//
var third_element = array[2]
print("third element is : \(third_element)")

//
array[3] = "Fourth"
print(array)

//insert
array.insert("New added", at: 5)
print(array)

//add second array at specific position
var add_to_arr : [String] = ["new1","new2","new3"]
array.insert(contentsOf: add_to_arr, at: 2)
print(array)

//remove
array.remove(at: 1)
print(array) //remove "B"

//contain
array.contains("new1")
if(array.contains("new1")){
    print("yes")
}else{
    print("no")
}

//

print("remove first element :\(array.dropFirst())") //remove "A"
print(array)
print(" remove last element : \(array.removeLast())")
print(array)

//joined : all ele. join and generate new string

var new_str = array.joined()
print(new_str)

var new_str1 = array.joined(separator: " ")
print(new_str1)

var strr = "12treter3"

var rm_arr = [1,2,3,4,5,6,7,8,9,10]
print(rm_arr.removeAll(keepingCapacity: true))
print(rm_arr.count)

var subrange_arr = [1,2,3,4,5,6,7,8,9,10]
var rm_arr1 = subrange_arr.removeSubrange(1...3)
print("subrange : \(subrange_arr)")

subrange_arr.reverse()
print("revese : \(subrange_arr)")

var i22 : UInt8 = 12
print(i22)
subrange_arr.sort()
print("sort : \(subrange_arr)")

subrange_arr.sort(by: >)
print("decrement sort : \(subrange_arr)")

subrange_arr.sort(by: <)
print("increment sort : \(subrange_arr)")

//replace
var numbers = [2,6,4,8,10,12,13]

print((numbers.min())!	)
// swap 6 and 4
numbers.swapAt(1,2)

print(numbers)

//

print(numbers.prefix(3))
//return specific number of ele. from end

print(numbers.suffix(2))

////
//for i in numbers{
//    print("index : \(i) value : \(numbers[i])")
//}

var arr4 : [String] = ["A","B","C"]

// print index and value of array
// enumerated is a method that return (i,v) pair. i is index and v is a value

for(i,v) in arr4.enumerated(){
    print("\(i) : \(v)")
}

//
if let i = arr4.index(of: "B"){
    arr4[i] = "R"
}
print(arr4)

//any type array
var any_type : [Any] = [1,"a",1.1]

for i in any_type{
    print(i)
}
		



//capacity

var cap = [1,2,3]
print(cap.capacity)

cap.append(4)
cap.append(5)
print(cap.capacity)
cap.append(contentsOf: [6,7,8,9,0,11])
print(cap.capacity)

cap.removeAll(keepingCapacity: true)
print(cap.capacity)

cap.removeAll(keepingCapacity: false)
print(cap.capacity)

var str0 : String = "abcdefgh"

var i = str0.index(str0.startIndex, offsetBy: 3)
str0.remove(at: i)
print(str0)
for i in str0{
    print(i)
}
print()

for (_,v) in str0.enumerated(){
    print(v)
}

print()

str0.forEach(){ i in
    print(i)
    
}

var str1 : String = "abba"
var str2 : String = String(str1.reversed())

if str1 == str2{
    print("both are same")
}else{
    print("not same")
}








