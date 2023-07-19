import UIKit

var greeting = "Hello, Functions playground"

//diclaration - function name,para and return

//empty function
func hello(){}
hello()



//defination and calling functions
func sum(n1 : Int, n2 : Int) -> Int {
    return n1 + n2
}

sum(n1 : 10, n2 : 20)

//return parameter and return value

//Functions Without Parameters
func withoutPara()-> String{
    return "Fuction without parameter"
}
var str = withoutPara()

print(str)

//Functions With Multiple Parameters
func fullName(name : String, surname : String) -> String {
   let str = name + " " + surname
    return str
}

print(fullName(name: "Shyam", surname: "Buhecha"))


//Functions Without Return Values
func noReturnVal(value : String){
    print(value)
    
}

noReturnVal(value: "hello simform")

//Functions with Multiple Return Values
func minMax(arr : [Int]) -> (Int,Int){
    let min : Int? = arr.min()
    let max : Int? = arr.max()
    
    return (min ?? 0,max ?? 0)
}

var ans = minMax(arr: [1,2,3,4,5,6,7,8])
print("min : \(ans.0) max : \(ans.1)")

//Optional Tuple Return Types

func student(name : String) -> (String,Int)? {
    if(name == "a"){
        return (name,name.count)
    }else{
        return nil
    }
}

print(student(name: "a") ?? (" ",0))

//Functions With an Implicit Return - function implicitly return a value 

func wishes(msg : String) -> String{
  
  "good " + msg
}

print(wishes(msg: "morning"))

//Function Argument Labels and Parameter Names

func someFunction(val1 : Int,val2 : Int) -> Int{
    return val1+val2
}

someFunction(val1: 20, val2: 30)

//Function Argument Labels and Parameter Names - Omit argument labels

func addFour(_ n1 : Int , n2 : Int) -> Int {
    return n1 + n2 + 4
}
addFour(10,n2 : 20)

//Function Argument Labels and Parameter Names - Specifying argument labels (To give a parameter name a different label, declare the label before the name. )

func fName(f fname : String, l lname : String){
    print(fname + " " + lname)
}

fName(f: "shyam", l: "buhecha")

//Function Argument Labels and Parameter Name - Default Parameter Values
func homeTownDistance(city : String, distance : Int = 0 ) -> (String,Int){
    return (city,distance)
}
    //if we not add destance parameter that time it take a default 0 as a distance
var op = homeTownDistance(city: "Ahamdabad")
print("city : \(op.0)  distance : \(op.1)")

var op1 = homeTownDistance(city: "Rajkot",distance: 192)
print("city : \(op1.0)  distance : \(op1.1)")

   //Note : we can not give default parameter and omit argument label to first parameter

//Function Argument Labels and Parameter Name - Default Parameter Values
func homeTownDistanceDemo(city : String = "Rajkot",_ distance : Int ) -> (String,Int){
    return (city,distance)
}
    //if we not add destance parameter that time it take a default 0 as a distance
var op2 = homeTownDistanceDemo(100)
print("city : \(op2.0)  distance : \(op2.1)")

//Function Argument Labels and Parameter Name - Variadic Parameters(A variadic parameter accepts zero or more values of a specified type.) (... is a periodic character)

func numAverage(doubles : Double...) -> Double {
    var total : Double = 0.0
    
    for i in doubles{
        total += i
    }
    return total/Double(doubles.count)
}
print(numAverage(doubles: 1.0,20.0,19.2,35.3))
print(numAverage(doubles: 1,2,34,5,6))

/*
 Function Argument Labels and Parameter Name - in out parameter (function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake. If you want a function to modify a parameter’s value, we can use inout parameters )
*/

func swap(_ number1 : inout Int,_ number2 : inout Int) -> (Int,Int){
    let temp = number1
    number1 = number2
    number2 = temp
    return (number1,number2)
}

var n1 : Int = 6
var n2 : Int = 5

print(n1,n2)

print(swap(&n1, &n2))

//
//Function Types - it is a reference type. if we assign a function to variable that time function parameter and return type is variable type

func addTwoInts(a : Int, b : Int) -> Int {
    return a+b
}

var mathsFunction : (Int,Int) -> Int = addTwoInts

print(type(of: mathsFunction))

//function type as a parameter
func calc(a : Int,b : Int,f : (Int,Int) -> Int){
    print(f(a,b))
}

calc(a: 5, b: 20, f: addTwoInts)

//function as return
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//print("Result: \(mathFunction(a, b))")
//}
//printMathResult(addTwoInts, 3, 5)
//
//
////
//
//func demo(n1 : Int, n2 : Int) -> (Int,Int) -> Int {
//
//    return addTwoInts
//}
//
//demo(n1: 5, n2: 10)


//nested function


//
//
//func nestedFunc(val1 : Int,val2 : Int ,bool : Bool) -> (Int) -> Int {
//
//    func addOne(n : Int) -> Int {  return n + 1 }
//
//    func subOne(n : Int) -> Int {  return n - 1 }
//
//
//}
//nestedFunc(val1: 10, val2: 5, bool: true)


//Generic function : Swift Generics allows us to create a single function and class (or any other types) that can be used with different data types.



print()


 
// generic function
//
//     print("Generic Functions :")
//
//func funGeneric<T>(data : T) {
//
//     print("Data : \(data) ")
// }
//
// funGeneric(data: 20)
//
//print()
//
//func funGeneric1<T>(data : T) {
//     print("Generic Functions :")
//     print("Data : \(data) ")
// }
//
// funGeneric1(data: [0,1,2,3,4,5,6,7,8,9])
//
//func funGeneric2<T>(data : T) {
//     print("Generic Functions :")
//     print("Data : \(data) ")
// }
//func name(name : String) -> String {
//    return name
//}
// funGeneric2(data: name(name: "Shyam"))




