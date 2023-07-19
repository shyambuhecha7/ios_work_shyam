import UIKit

var greeting = "Optional, playground"

var v1 : String?
v1 = "s"
print(v1)
var v2 : String!
v2 = "b"
print(v2)
//var v3 = nil
//print(v3)

var a : Int?

print(a)

var b : String? = "B"
print(b)

//force unwrap

print(b!)

var x : String?
var y : String = "Y"

//optional binding - it help to find optional contain value or not
//if let temp = x{
//    print("contain value : \(temp)")
//}else{
//
//}

//guard let

func check() {
    //var sample : Int?
    var sample2 : Int? = 1

    guard let temp = sample2 else{
        print("its nil")
       return
    }
    
    print("its value : \(temp)")
}
check()

//


//nil-colscing operator

var z = x ?? y

print(z)

//if-let optional binding

var val : String?
var val2 : String?		 = "a"

if let temp = val2 {
    print("value is \(temp)")
}else{
    print("its nil")
}
var an : String?
an = " aa"

if let temp = an {
    print("value is \(temp)")
}else{
    print("its nil")
}


var jobTitle : String?
jobTitle = "Native Mobile"
print(jobTitle)

//optional binding if let

if let temp = jobTitle{
    print(temp)
}


for i in 1..<5 {
     print(i)
}
print()

var jk : Int = 0
switch jk {
case 1 : print("1")
case 0 :
    print("00")
case 0...3 : print("3")
default :
     print("no")
}

//

var n5 : Double? = 10.2

if let i = n5 as Double?{
  print(i)
}else if let i = n5 as? Float{
    print(i)
    
}else if let i = n5 as? Int{
    print(i)
    
}else{
 print("it is nil ")
}




var num : Int? = 15
if let num = num,num > 10 {
    print(num)
}
