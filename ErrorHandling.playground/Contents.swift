import UIKit

var greeting = "Hello, playground"

enum FormError : Error {
    case notEnterUserName
    case enterAge(age : Int)
    case formNotSubmitted
}

//use a throw statement to throw an error.
//throw FormError.enterAge(age: 21)

//Propagating Errors Using Throwing Functions

class ErrorHandling {
    func showError() throws {
        print("hello world")
    }
    func username(firstName : String) throws {
        if(firstName != "Shyam") {
            throw FormError.notEnterUserName
        }else{
            print("name is shyam")
        }
        
    }
    
}
var numerator = 10
var denominator = 0

// try to divide a number by 0
var result = ErrorHandling()
// result.division(firstName: "Shyam")

//do catch

do {
    try result.username(firstName: "s")
}catch{
    print("error : not match a username")
}
//

struct Item {
    var itemPrice : Int
    var  itemCount : Int
}

enum VedingErrors : Error {
    case error1,error2,error3
}
//class VedingMachine{
//
//    var inventory  = [
//        "chocolate" : item(itemPrice: 50, itemCount: 2),
//        "milk" : item(itemPrice: 30, itemCount: 0),
//        "atta" : item(itemPrice: 20, itemCount: 3),
//    ]
//
//    var balancecoins = 0
//
//    func vend(name : String) throws {
//        guard let n = inventory[name] else{
//            throw VedingErrors.error1
//        }
//
//        guard n.count > 0 else {
//            throw VedingErrors.error2
//        }
//        balancecoins -=  n.item
//    }
//}
//
//var objV = VedingMachine()
//try objV.vend(name: "S")


//
enum DivisionError: Error {
    
    case dividedByZero
}

func division(n1: Int, denominator: Int) throws -> Int{
    if denominator == 0 {
        throw VedingErrors.error2
    }else {
        let result = n1 / denominator
        return result
    }
}

var c = try division(n1: 10, denominator: 2)

print(c)
var a =   try? division(n1: 30, denominator: 0)
print(a)

//disable error handling
var b = try! division(n1: 30, denominator: 2)
print(b)

func deferr() {
    defer {print("defer1 called")}
    defer {print("defer2 called")}
    print("function called")
}
deferr()

func deferTry() -> Int {
    print("function deferr called")
    defer { print("return after defer called")}
    return 5
    
}

var defertry = deferTry()
print(defertry)

//
func someThowingfunc() throws -> Int{
    
    return 2
    
}

var x = try? someThowingfunc()

do{
    try division(n1: 30, denominator: 0)
    print("call")
}catch{
    print("catch call , error occur")
}

enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

// access raw value of python case
var result1 = Size.small.rawValue
print(result)
