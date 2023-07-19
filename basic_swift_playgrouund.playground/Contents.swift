import UIKit

//variable and constants
let const : String

const = "name"

print(const)

var a : String = "5"
print(a)


//Data-types

var int : Int = 5
var char : Character = "c"
var float : Float = 15.2
var double :Double = 213.2000002
var str : String = "Shyam"
var bool : Bool = true

print("print a value of int : \(int)")
print("print a value of char: \(char)")
print("print a value of float : \(float)")
print("print a value of double : \(double)")
print("print a value of String : \(str)")
print("print a value of Bool : \(bool)")


//type casting
var num : Int = 10

print(Float(num))

print(String(num))

print(Double(num))



//Typealias

typealias Str = String
typealias I = Int

let s1 : Str = "Shyam"
var num1 : I = 20


print(s1)
print(num1)

//Tuples

let httpErrors = (code : 404,msg : "not found")

//let(code,msg) = httpErrors

print(httpErrors.code)
print(httpErrors.msg)

//basic operators
// 1.arithmatic operation

var x = 100
var y = 20

print("addition : \(x+y)")
print("substraction : \(x-y)")
print("multiplication : \(x*y)")
print("division : \(x/y)")
print("remainder : \(x%y)")





