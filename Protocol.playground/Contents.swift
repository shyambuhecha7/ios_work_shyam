import UIKit

var greeting = "Protocol playground"

/*
 protocol : protocol define the blueprint of method or property that can then be adopt by the classes.
 
 --> it hold only p or m defination . not a body
 --> protocol must specify property gettable or gettable or settable
 */


protocol Greet {
    
    //blueprint of property
    var name : String {
        get
    }
    
    //blueprint of method
    func message()
}

//1.Property Requirements : support only variable property and type propery
protocol SomeProtocol {
    var notSettble : Int {
        get
    }
    var gettableWithSettable : Int {
        set get
    }
}

protocol SomeOtherProperty {
    static var someTypePropery : String {
        get set
    }
}

protocol FullyName {
    var fullname : String {
        get
    }
}

struct Person : FullyName {
    var fullname: String
    
   
}

let fullName = Person(fullname : "Shyam Buhecha")
fullName.fullname


class Starship : FullyName {
    var prefix : String?
    var name : String
    
    init(name : String, prefix : String? = nil){
        self.name = name
        self.prefix = prefix
    }
    var fullname: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var star2023 = Starship(name: "StarX",prefix: "ISRO")
star2023.fullname

//2.Method Requirements

protocol Someprotocol {
    static func someTypeMethods()
}

protocol SomeRendomNumGenerator {
    func rendom() -> Int
}

class Generator : SomeRendomNumGenerator {
    
    func rendom() -> Int {
        var arr = [0,1,2,3,5,6,7,8,9]
        return arr.randomElement() ?? 0
    }
}
var numGenerate = Generator()
numGenerate.rendom()

//3.Mutating Method Requirements

protocol Togglable {
    mutating func toggle()
}

enum SwitchOnOff : Togglable {
    case on,off
    
    mutating func toggle() {
        switch self {
        case .on :
            self = .on
        case .off :
            self = .off
        }
    }
}
var light = SwitchOnOff.on
light.toggle()

//3.Initializer Requirements

protocol SomeInitProtocol {
    init(name : String)
}

class SomeInitClass : SomeInitProtocol {
    var name : String
    required init(name: String) {
        self.name = name
    }
}
var objSome = SomeInitClass(name: "Some")
print(objSome.name)

protocol A {
    init()
}
class Aa {
    init(){
        
    }
}

class B : Aa, A {
    required override init() {
        
    }
}

//4.Protocols as Types :
//protocol Person1 {
//    var firstName : String { get set }
//    var lastName : String { get set }
//
//    init(firstName : String, lastName : String)
//
//
//}
//
//
//func updatePerson(person : Person1) -> Person1 {
//    var newPerson : Person1
//
//    return newPerson
//}
//
//class P : Person1 {
//    var firstName: String
//    var lastName: String
//
//    required init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//
//    }
//
//}
//
//var p = P(firstName: "MS", lastName: "Dhoni")
//


struct Cookie {
    var size : Int = 5
    var hasChocolatechips : Bool = false
}

class Bakery {
    var delegate : BackeryDelegate?
    
    func makeCookies(){
        var cookie = Cookie()
        cookie.size = 10
        cookie.hasChocolatechips = true
        
        delegate?.cookieWasBaked(cookie: cookie)
    }
    
}

protocol BackeryDelegate {
    func cookieWasBaked(cookie : Cookie)
}

//let’s create the actual delegate class!
class CookieShop : BackeryDelegate {
    func cookieWasBaked(cookie: Cookie) {
        print("yeh, cookie is baked.")
    }
}

let shop = CookieShop()

let bakery = Bakery()

bakery.delegate  = shop
bakery.makeCookies()

//Adding Protocol Conformance with an Extension

class Sample {
    var a = 10
}

protocol Print {
    func printValue()
}

extension Sample : Print {
    func printValue(){
        print("value : \(a)")
    }
}
var sample = Sample()
sample.printValue()

//
protocol TextRepresentable {
    var textualDescription: String { get }
}

//Collections of Protocol Types


struct nameStruct : TextRepresentable {
    var textualDescription: String
}

var object1 = nameStruct(textualDescription: "Good Morning")
var object2 = nameStruct(textualDescription: "Good afternoon")

//array of protocol
var arrOfProtocoType : [TextRepresentable] = [object1,object2]

for item in arrOfProtocoType {
    print(item.textualDescription)
}
//dictionary of protocol
var dictionaryOfProtocol : [Int : TextRepresentable] = [1 : object1, 2 : object2]


//protocol inheritence

protocol ProtocolA {
    var a : String {
        get set
    }
}

protocol ProtocolB  {
    var b : String {
        get set
    }
}

protocol ProtocolC : ProtocolA, ProtocolB{
    var c : String {
        get set
    }
}

class Basket : ProtocolC {
    var a: String
    var b: String
    var c: String
    
    init(a : String, b : String, c : String){
        self.a = a
        self.b = b
        self.c = c
    }
}

var basket = Basket(a: "VAlue1", b: "Value2", c: "Value3")
basket.a
basket.b
basket.c

//class only protocol
protocol classOnlyProtocol : AnyObject {
    var str : String {
        get
    }
    
}

class ClassOnly : classOnlyProtocol {
    var str: String = "Sdsfasdf"
    
}

var classonlyobj = ClassOnly()
classonlyobj.str

//combination of protocol
protocol p1 {
    var a : String {
        get
    }
}

protocol p2 {
    var b : String {
        get
    }
}


class P1p2 : p1,p2 {
    var a: String = " "
    
    var b: String = " "
    
    
}

var p1p2 = P1p2()
p1p2.a

//where clause


//
protocol InitializerFailable {
    init?(initializer : Int)
}

class ProtocolFailableInitializer {
    var initializer : Int
    init(initializer : Int) {
        self.initializer = initializer
    }
}

extension Collection where Element: Equatable {
    func allEqual() -> Bool {
        for element in self {
            if element != self.first {
                return false
            }
        }
        return true
    }
}
let equalNumbers = [100, 100, 100, 100, 100]
let differentNumbers = [100, 100, 200, 100, 200]

print(equalNumbers.allEqual())
// Prints "true"
print(differentNumbers.allEqual())
// Prints "false"



                                                                                                                                                                                                                                           
