import UIKit

var greeting = "Hello, playground"

/*
 Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence.
 
 -> ou use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval
 */
//subscript syntaxt

//subscript(index : Int) -> Int {
//    get{
//        //return subscript value
//    }
//    set(newValue){
//        //perform action
//    }
//}
// with computed properties, you can choose not to specify the setter’s (newValue) parameter. A default parameter called newValue is provided to your setter if you don’t provide one yourself.

//read only computed prpery : remove set method
//subscript(index : Int) -> Int{
//    //return
//}

//
/*
 Subscript Usage :  Subscripts are typically used as a shortcut for accessing the member elements in a collection, list, or sequence.
 */

/*
 For example, Swift’s Dictionary type implements a subscript to set and retrieve the values stored in a Dictionary instance. You can set a value in a dictionary by providing a key of the dictionary’s key type within subscript brackets, and assigning a value of the dictionary’s value type to the subscript:
 */

var dics : [Int : String] = [1 : "One", 2 : "Two", 3 : "Three", 4 : "Four"]

dics[2]

//read only subscript propery

struct add {
    var n : Int
    
    subscript(i : Int) -> Int{
        return n + i
    }
}

let isAdd = add(n: 10)
print("subscipt value : \(isAdd[2])")

// using subscript with getter and setter properties.

struct Student {
    var branch = ["A","B","C","D"]
    
  
    subscript(index : Int) -> String {
        get{
          return branch[index]
        }
        set(newValue){
            self.branch[index] = newValue
        }
    }
}

var s1 = Student()
s1[0] = "N"
s1[1] = "M"


print(s1[0])
print(s1[1])


/*
 Swift Subscripts Options
 In swift, subscripts can accept any number of input parameters and these input parameters can be of any data type and subscripts can also return any type. Subscripts cannot provide any default parameter values or use any in-out parameters.
 
 --> In classes or structures, we can define multiple subscripts based on our requirements and the process of defining multiple subscripts will call as a subscript overloading.
 */

class Sample {
    var v1 : String?
    var v2 : String?

    subscript(row : Int, col : Int) -> String{
        get{
            return "\(row+col)"
        }
        set(newValue){
           v1 = newValue
            v2 = newValue
        }
    }
}

var res = Sample()

res[0,0] = "Suresh Dasari"

res[0,1] = "Rohini Alavala"

print(res[0,0])

print(res[0,1])


//Type Subscripts
enum Planet : Int {
    case p1, p2, p3, p4, p5, p6, p7
    static subscript(n : Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let p2 = Planet[4]
print(p2)





