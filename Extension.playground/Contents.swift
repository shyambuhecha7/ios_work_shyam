import UIKit

var greeting = "Hello, playground"

class Temperature {
    var calcius : Double = 0
    
    init(calcius : Double) {
        self.calcius = calcius
    }
    func temperature()  {
        print("calcius : \(calcius)")
    }
}

extension Temperature {
    
    func ferenhit()  {
        print( (calcius * 1.8) + 32 )
    }
    

}
var obj = Temperature(calcius: 31.0)
obj.ferenhit()

/*
 Computed Property In Extension :
 -> we can not add store property into extention
 ->Swift lets us add computed properties to an extension
 */

class Circle {
    var radius : Double = 0
    
    init(radius : Double){
        self.radius = radius
    }
}

extension Circle {
    //var a = 10
    
    var redius : Double {
        return (3.14 * radius * radius)
    }
}
let circle1 = Circle(radius: 10)
circle1.redius

extension Double {
    var km : Double { return self * 1000}
}
var onekm = 2.km

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0,y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    
}
let defaltRect =  Rect()
let memberWisedRect = Rect(origin: Point(x : 10.0, y: 10.0), size: Size(width: 12.0, height: 2.0))

extension Rect{
    init(center : Point,size : Size) {
        self.init(origin: Point(x : 10.0, y: 10.0), size: Size(width: 12.0, height: 2.0))
    }
}

var asa = Point()
asa.x

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()

extension String {
    func printString(){
        print(self)
    }
}

var str = "Hello Good Afternoon"
str.printString()

//

extension Int {
    subscript(digitIndex : Int) -> Int {
        var decimalBase = 1
        
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self/decimalBase) % 10
    }
}

1234[0]
1234[1]

//nested type

extension Int {
    enum Kind {
        case positive,nagative,zero
    }
    
    var kind : Kind {
        switch self {
        case 0 :
            return .zero
        case let x where x > 0 :
            return .positive
        default :
            return .nagative
        }
    }
}
