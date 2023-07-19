import UIKit

var greeting = "Hello, playground"

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
