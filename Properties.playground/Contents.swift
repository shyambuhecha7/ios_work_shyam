import UIKit

var greeting = "Properties, playground"

/*
 variable and constant define in class or struct or enum are called properties.
 --> Stored properties store constant and variable values as part of an instance,
 --> computed properties calculate (rather than store) a value.
 
 -->Computed properties are provided by classes, structures, and enumerations.
 -->Stored properties are provided only by classes and structures.
 */

/*
 store properies :
 - stored property is a constant or variable that’s stored as part of an instance of a particular class or structure
 -
 */

class Fruits {
    var fName : String = " "
    var fPrice : Int = 0
    
 
}

var fruit1 = Fruits()

print(fruit1.fName)
print(fruit1.fPrice)

fruit1.fPrice = 250
print(fruit1.fPrice)

/*
 Stored Properties of Constant Structure Instances :
 
 we can not change constant prpertie
 */
let fruit2 = Fruits()
//fruit2.fPrice = 40

/*
 Lazy Stored Properties :A lazy stored property is a property whose initial value isn't calculated until the first time it's used.
 
 -A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
 
 -Constant properties must always have a value before initialization completes, and therefore can’t be declared as lazy.
 
 -uses a lazy stored property to avoid unnecessary initialization of a complex class.
 */



class A{
    var file = "data.txt"
}

class B{
    lazy var importer = A()
    var data : [String] = []
    
}
let manager = B()
manager.data.append("v1")
manager.data.append("v2")



print(manager.importer.file) //when use that time memory or initial value assign

/*
 Computed Properties : it is caluculate the value
 
 */
class Calc{

  // define two stored properties
  var num1: Int = 0
  var num2: Int = 0

  // define one computed property
  var sum: Int {

    // calculate value
    num1 + num2
  }
}

var obj = Calc()
obj.num1 = 100
obj.num2 = 200

// read value of computed property
print(obj.sum)

/*
 Getters And Setters for Computed Properties :
 
 Getter - to get the sum of n1 and n2
 Setter - to change value of n1 and n2
 
 objCalc.sum - to access getter
 objCalc.n1 = 20 - to access setter
 */

class Calc2{
    var n1 : Int = 0
    var n2 : Int = 0
    
    var sum : Int{
        get{
            n1 + n2
        }
        set(add){
            n1 = (add + n1)
            n2 = (add + n2)
        }
    }
    
  
}
var objCalc = Calc2()

objCalc.n1 = 20
objCalc.n2 = 30

//get
print(objCalc.sum)

objCalc.sum = 50
print(objCalc.n1)
print(objCalc.n2)


//Shorthand Setter Declaration
//Shorthand Getter Declaration

/*
 Read-Only Computed Properties : A computed property with a getter but no setter is known as a read-only computed property.
 
 - read-only computed property always returns a value, and can be accessed through dot syntax, but can’t be set to a different value.
 */

struct Sample{
    var s1 : String = " "
    
    var getS1 : String{
        return s1
    }
}

let objSample = Sample(s1 : "Shyam")



print(objSample.getS1)

//Property Observers : Property observers observe and respond to changes in a property’s value

class PropertyObserver{
    var total : Int = 0 {
        willSet(newSetValue){
            print("set name : \(newSetValue)")
        }
        didSet{
            print("changes : \(total - oldValue)")
        }
    }
}

let counter = PropertyObserver()
counter.total = 100
//set name : 100
//changes : 100
counter.total = 300
//set name : 300
//changes : 200


/*
 wrapper property : A wrapper property is a generic structure that encapsulates read and write access to the property and adds additional behaviour to it.
 
 -The declaration for number in the example above marks the variable as private, which ensures number is used only in the implementation of TwelveOrLess. Code that’s written anywhere else accesses the value using the getter and setter for wrappedValue, and can’t use number directly. For information about private,
 */

@propertyWrapper
struct Parameter{
    private var num : Int
 
    
    var wrappedValue: Int{
        get {
            return num
        }
        set(newValue){
            num = min(newValue, 12)
        }
    }
    init() {
        self.num = 10
    }
}


struct Rect{
    @Parameter var hight : Int
   
}

var rectangle = Rect()

print(rectangle.hight)

//Setting Initial Values for Wrapped Properties
@propertyWrapper
struct SmallNum{
    private var max : Int
    private var num : Int
    
    var wrappedValue : Int {
        get { return num}
        set { num = min(newValue, max)}
    }
    
    init(){
        max = 10
        num = 0
    }
    
    init(wrappedValue : Int){
        max = 10
        num = min(wrappedValue,max)
        
    }
    init(wrappedValue : Int, max : Int){
        self.max = max
        num = min(wrappedValue,max)
    }
}

struct Rect1 {
    @SmallNum var hight : Int
    @SmallNum var width : Int
}
var rect1 = Rect1()
print(rect1.hight)
print(rect1.width)



//@propertyWrapper
//struct Login {
//    private var name : String
//
//    var wrappedValue : String {
//        get {
//            return name
//        }
//        set(newValue) {
//           name = newValue
//        }
//        init(name : String){
//            self.name = name
//        }
//    }
//
//}
//
//struct User{
//   @Login var userName : String
//}
//
//var uname = User()
//uname.name = " Shyam"
//
//
//print(uname.name)


//    Setting Initial Values for Wrapped Properties




/*
 local and global : lion is global var and roar is local var for function
*/
class Animal{
    var lion : String
    
    func voice(){
        var roar = "Roar"
        print("lion voice is called \(roar)")
    }
    init(){
        lion = "Lion"
    }
}







/*
 //Type properties : Type properties are useful for defining values common to all instances of a particular to a type.
 Struct / Enum:

 Type properties in structs and enum begin with the keyword struct

 
 */





class Leptop {
    var key = 10
    var keyboard : Int {
        get {
            return 20
        }
        set(newValue){
            keyboard = newValue
        }
    }
}
var l1 = Leptop()

print(l1.keyboard)







