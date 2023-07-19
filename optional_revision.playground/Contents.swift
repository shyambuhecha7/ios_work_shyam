import UIKit

var greeting = "Hello, playground"

//let uop : String! = "aa"
//let up2 : String = uop

//print(up2)
//

var a : Int? = 100

if let a = a {
    print(a)
}else{
    print("this is nil")
}

//in below code, first condition is not true because a is optional(100) not 100.

let a1 : Int? = 10

if let a1 = a1,a1 > 10 {
    print(a1)
}else{
    print(a1)
}

//above code solution, if we unwrap a than first condition is true

//let b : Int?
//
//if let b = b {
//    print(b)
//}



//error because we can not use constant without initialization

func add(){
    var c : Int? = 10
    guard let c = c, 10>0 else{
        print(c)
        return
    }
    print(c)
}
add()

//
var someValue:Int?
func testFunc() {
   
    guard let temp = someValue else {
        print("nil value")
        return
    }
    print("some value \(temp)")
}

testFunc()

//if let temp = someValue {
//    print("value is\(t)")
//}else{
//    print("it is nil")
//}
//
////nil coscing
//var x : String?
//
//x ?? "s"

//error occur m used before initialization
//let m : Int?
//
//if let m = m, 10>0{
//    print(m)
//}else{
//    print("nil")
//}

//not error because val
var n : Int? = 10

if let n = n, 10>0{
    print(n)
}else{
    print("nil")
}

//
var num : Int? = 15





var someValue1:Int!
print(someValue1)
