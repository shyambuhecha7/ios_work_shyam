import UIKit

var greeting = "Hello,Closure  playground"


//closure - A closure is a block of code that you can pass around in your code

let empty = {
    
} // () -> ()
empty()
let goodMorning = {
    print("Good Morning! ")
}

goodMorning()

//closure with parameter and return value

let birthday : (String) -> () = { name -> () in
    print("Happy Birthday \(name)")
}

birthday("To You")


//When you call a closure, you don’t include a name for any parameters it has. This is different from a function, which usually has named parameters (called argument labels).
let birthDay : (String) -> () = {
    print("happy birthday \($0)") //$0 is used to reference the value of first parameter
}

birthDay("To You")

//Swift’s Closure Types Explained
//Swift’s Closure Types Explained - 1.closure with one parameter

var hello : (String) -> () = {(name : String) -> () in //parameter is string and return a void
    print(name)
    
}
hello("Hello")

//Swift’s Closure Types Explained - 2. closure with no para and no return

/*
 Void means “nothing”. When your function returns Void, it does not return anything. Not even nil or an empty string! As described in the Apple Developer Documentation, Void is an alias of an empty tuple (). When a function or closure doesn’t return anything, its return type is Void.
 */
let authentication : () -> () = { () -> () in
    print("No parameter with No Return Value")
}
authentication()

var authentication1 : () -> Void = { () -> Void in
    
}

authentication1()
//Swift’s Closure Types Explained - 2. closure with no para and return Int
var returnNumber : () -> Int = { () -> Int in
    return 5
}

print(returnNumber())

//closure with parameter and optionals are optionals

var firstName = { (fName : String?) -> String? in
    if let fName = fName{
        print(fName)
        return fName
    }else{
        return nil
    }
}

var strOutput : String?
print(firstName(strOutput))

var sampleClosure = {() -> () in
    print("closure as a function parameter")
}

//closure as function parameter
func funSample(sample : () -> ()){
    
    sample()
}

funSample(sample: sampleClosure)

//Trailing closure - In trailing closure, if a function accepts a closure as its last parameter,
func car(strName : String,closure : () -> ()) {
    print(strName)
    closure()
}

car(strName: "it is Trailing Closure", closure: sampleClosure)

car(strName: "swift") {
    print("it is trailing closure")
    
}

//auto closure
/*
 While calling a function, we can also pass the closure without using the braces {}.
 To pass the closure argument without using braces, we must use the @autoclosure keyword in function definition.
 
 Note: We cannot pass arguments to an autoclosure. If we try to do so we'll get the error message as: argument type of @autoclosure parameter must be '()'.


 */

func display(name : @autoclosure () -> ()){
    print("display function")
    name()
}

display(name: print("this is an auto closure"))

//non asciping closure

var studentClosure = { () -> () in
    print("student")
}
func student1(name :  String ,  c : () -> ()) -> String{
   
     studentClosure()
    return name
    
}
student1(name: "xyz",c : studentClosure)

//ascaping closure
func student2(name :  String ,  c : @escaping () -> ()) -> String{
   
     studentClosure()
     return name
    
}
student2(name: "xyz",c : studentClosure)


//23M

//typealias with closure

typealias MyClosure = (Int, Int) -> Int // it is a closure that have 2 para and Int return

//create function
func addition(str : String , closure : MyClosure){
    print(str)
    let total =   closure(10,20)
    print(total)
}

//call the function and pass closure
addition(str: "Addition of",closure: { (x : Int, y : Int) -> Int in
   return x + y
})

//


let bags = { () -> Int in
    var aVal : Int = 0
    aVal+=1
    return aVal
    
}



bags() //1
bags() //2
bags() //3








