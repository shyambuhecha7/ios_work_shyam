import UIKit

var greeting = "Hello, playground"

class myClass {
    static func myMethod1() {
    }
    class func myMethod2() {
    }
    static var myVar1 = ""
}

class B : myClass{
    override func myMethod2(){
        print("class method")
    }
}
var a = B()
b.my
