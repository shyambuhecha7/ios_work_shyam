import UIKit

var greeting = "Hello, playground"

/*
 Initialization is the process of preparing an instance of a class, structure, or enumeration for use
 
 -----The difference between initializing a Class and initializing a Struct is this:---
 --> Structs in Swift have their own default initializer, Classes do not.
 What does this mean?
 -->It means when we create a struct we do not need to have an init() method included in our Struct, it is created automatically for you.
 
 -->Classes must have an init() method, only if a property of the class is not instantiated when the class is created.
 
 why use : Failable initializers can protect you from setting a class’s property to the wrong value and allow you to return nil if the class could not be initialized.
 
 - failable initializer using init?, this allows us to cancel out of initialization returning nil to the variable.
 
 - Using failable initializers also makes the variable that holds the class optional. Here if we do not pass in a name, we return nil, otherwise, we return an optional myFailableClass instance.
 */



//Setting Initial Values for Stored Properties

//Initializers
//Initializers are called to create a new instance of a particular type



struct Temperature {
var calc : Double

init(){
    calc = 38.0
}
}
var c = Temperature()
print(c.calc)



/*
Default Property Values:
You can set the initial value of a stored property from within an initializer, as shown above. Alternatively, specify a default property value as part of the property’s declaration.

The default value also makes it easier for you to take advantage of default initializers and initializer inheritance
*/
struct Value {
var val1 : Int = 10
}
var a = Value()
a.val1 = 20
print(a.val1)



/*
Customizing Initialization : customize the initialization process with input parameters and optional property types, or by assigning constant properties during initialization, as described
*/
struct calsius {
var temp1 : Double
init(f : Double) {
    temp1 = (f - 32) / 1.8
}
}
var objTemp1 = calsius(f : 50)
print(objTemp1.temp1)



//Parameter Names and Argument Labels
struct Color {
var red,blue,green : Double

init(red : Double, blue : Double, green : Double){
    self.red = red
    self.blue = blue
    self.green = green
}
    init(white : Double){
        red = white
        blue = white
        green = white

    }
}

let c1 = Color(red: 1.0, blue: 1.0, green: 0.0)
let c2 = Color(white: 0.5)
//   let veryGreen = Color(0.0, 1.0, 0.0)
// this reports a compile-time error - argument labels are required



//initialize pera without argument lable .: use omit argument (_) before para



struct Demo {
    var para1 : Int

    init(_ c : Int){
    para1 = c
}
}

//optional property type
class Sample {
    var name : String
    var new  : String?
    
    init(name : String){
        self.name = name
    }
    
}

var objSample = Sample(name: "Shyam")
objSample.new = "new String"
print(objSample.new ?? " ")


//Assigning Constant Properties During Initialization
class Sample1 {
    let name : String
 
    
    init(name : String){
        self.name = name
    }
    
}

var objSample1 = Sample1(name: "Shyam")

print(objSample1.name)

//Default Initializers

class DefaultInitialization {
    var a : Int = 10
    var bool  = true
}

//Memberwise Initializers for Structure Types
struct Size {
    var w = 0.0, h = 0.0
}
let twoByTwo = Size(w: 2.0, h: 2.0)

//Initializer Delegation for Value Types : Initializers can call other initializers to perform part of an instance’s initialization. This process, known as initializer delegation, avoids duplicating code across multiple initializers.
//

struct A {
    var a1  = 0
    var a2 = 0
}
struct B {
    var b1 = 0
    var b2 = 0
}

struct Initializer {
    var a = A()
    var b = B()
    
    init(){}
    
    init(a : A, b : B){
        self.a = a
        self.b = b
    }

}
var multiInit = Initializer(a: A(a1: 5,a2: 5), b: B(b1: 10,b2: 10))
print(multiInit.a.a1)

//designed intitialization and convenience initialization : Convenience initializers are written in the same style as designed, but with the convenience modifier placed before the init keyword, separated by a space
//designed initi.. : simply set the default value in the init definition
//convenience ini... : simply set a default value, and that is where convenience initializers come

class Office {
    var name : String
    var chair : Int
    var fan : Int?
    
    //Designated initializers
    init(name : String,chair : Int){
        self.name = name
        self.chair = chair
    }
    
    //convenience initializers
    convenience init(){
        self.init(name: "Simform", chair: 2000)
    }
}
//two phase initialization :
//call the  convienienced
var office = Office()
office.chair
office.name

// call the designated
var office1 = Office(name: "abc", chair: 18)
print(office1.chair)



//failable initialization :  an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong
struct  Failable {
    var id : String
    
    init?(id : String){
        if (id.count == 4){
            self.id = id
        }else{
            return nil
        }
    }
}
var f1 = Failable(id: "abc")
print(f1?.id ?? "it is nil value")

var f2 = Failable(id: "abcd")
print(f2?.id ?? "it is nil value") //count = 4

//failable initialization for enumeration

enum characters {
    case a,b,c
    
    init?(symbol : Character){
        switch symbol{
        case "A" :
            self = .a
            print("A")
        case "B" :
            self = .b
            print("B")
        case "C" :
            self = .c
            print("C")
        default :
            return nil
            
        }
    }
}

var char1 = characters(symbol: "B")

var char2 = characters(symbol: "D")

//Overriding a Failable Initializer
class X {
    var a : String
    
    init(){
        self.a = " "
    }
    init?(a : String){
        if a.isEmpty { return nil }
        self.a = a
    }
}

class Y : X {
    override init() {
        super.init()
        self.a = "First"
    }
    
    override init(a: String) {
        super.init()
        if(a.isEmpty){
            self.a = "First"
        }else{
            self.a = a
        }
    }
}




//Deinitialization : A deinitializer is called immediately before a class instance is deallocated.
class School{
    var schoolName : String?
    
    init(schoolName : String){
        self.schoolName = schoolName
        print("initialize a value")
    }
    
    deinit{
        print("deinitialization")
        schoolName = nil
    }
    
}
var schoolNameObj = School(schoolName: "Nachiketa")



