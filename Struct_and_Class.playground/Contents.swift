import UIKit

var greeting = "Struct and Class, playground"

/*
 Struct  :struct is used to store variables of different data types.
 Class : A class is considered as a blueprint of objects.
 
 */

//empty
struct swiftStruct {
    
}

class swiftClass {
    
}

//struct
struct Values{
    var a = 100
    var b = 0
    func ab(){
        print("a")
    }
}

//class
class Sample{
    
    var val1 = 10
    var str = "Hello"
    var name : String?
    var callStruct = Values()
}

//creating instance of the class and struct

var someValue = Values()
let someSample = Sample()

print(type(of: someValue))

//access struct value
someValue.a = 10
print(Values())
someSample.callStruct.ab()
print(someSample.callStruct.ab())

//Accessing Properties

print(someValue.a)
print(type(of: someValue.a)) // Int

print(someSample.callStruct.a)
someSample.callStruct.a = 256
print(someSample.callStruct.a)

//Memberwise Initializers for Structure Types
let vInstabce = Values(a: 400,b: 500)
print(vInstabce.a)
print(type(of: vInstabce))

//Structures and Enumerations Are Value Types
let cd = Values(a: 566,b:879)
var newcd = cd

print(newcd.b)

/*
 Access Control :  access controls are used to set the accessibility (visibility) of classes, structs, enums, properties, methods, initializers, and subscripts.
       1. public, private, fileprivate,iteranal
 */

/*
 public Access Control
 In Swift, when methods, properties, classes, and so on are declared public, then we can access them from anywhere.

 The public access modifier has no scope restriction
 */
public class Animal{
    var name : String = ""
    
    func runningSpeed(speed : Double) -> String{
        return "Speed of \(name) : \(speed)km/h"
    }
}

var lion = Animal()
lion.name = "Lion"
lion.runningSpeed(speed: 150.0)
print(lion.name)
print(lion.runningSpeed(speed : 150.0))

/*
 private Access Control
 When we declare a type member as private, then it can only be accessed within the same class or struct.
 */

class Student{
    private var name : String = ""
    
    private static func printName(name : String){
        print("Student name is \(name)")
    }
    


    
}

/*
 fileprivate Access Control - When we declare a type member as fileprivate, then it can only be accessed within the defined source file.
 
 */

class Student1{
    fileprivate var name : String = ""
    
    fileprivate func printName(name : String){
        print("Student name is \(name)")
    }
    
    
    
}

var s1 = Student1()

s1.name = "Shyam"
print(s1.name)
s1.printName(name: s1.name)

/*
 internal Access Control
 When we declare a type or type member as internal, it can be accessed only within the same module.

 A module is a collection of types (classes, protocols, etc) and resources (data). They are built to work together and form a logical unit of functionality.
 */
class StudentName{
    internal var name = "Shyam"
    
    internal func printName(name : String) -> String {
        return name
    }
}

var student1 = StudentName()

print(student1.printName(name : "AB"))

/*
  ARC
 
 */

class Customer{
    let uid : String
    let name : String
    
    init(uid : String, name : String){
        self.uid = uid
        self.name = name
        
        print(" initialized ")
    }
    
    deinit{
        print("deinitialixw")
    }
}

//Strong reference count
class StudentMark{
    let name : String
    var stud : StudentN?
    
    init(name : String){
        print("stidentMark initialize")
        self.name = name
    }
    deinit {
        print("deallocate")
    }
}
class StudentN{
    let name : String
    weak var stud2 : StudentMark?
    init(name : String){
        print("StudentN initialize")
        self.name = name
    }
    deinit {
        print("deinitialize")
    }
}

var a : StudentMark?
weak var b : StudentN?

a = StudentMark(name: "M")
b = StudentN(name: "N")

a!.stud = b
b!.stud2 = a

a = nil
b = nil

//












