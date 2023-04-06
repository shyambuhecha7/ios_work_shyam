import UIKit

var greeting = "Enum playground"

/*
 Enumerations - Enum is a group of related value and enable you to work with those value in type safe way.
 
 values known as a raw value
 */

//
enum season : Int,CaseIterable{
    case summer = 10
    case winter, monsoon, spring
}

var s : season = .summer
print(s.rawValue)
print(type(of:s.hashValue))

print(s.rawValue)

var currentSeason = season.summer
print(currentSeason)

switch currentSeason{
case .winter :
    print("current season is winter")
case .summer :
    print("current season is summer")
case .monsoon :
    print("current season is monsoon")
case .spring :
    print("current season is spring")


}
//enum into function

func allSeason(myenum : season){
    switch myenum{
    case .winter :
        print("current season is winter")
    case .summer :
        print("current season is summer")
    case .monsoon :
        print("current season is monsoon")
    case .spring :
        print("current season is spring")
    default :
        print("not matched")
        
    }
}

allSeason(myenum: .spring)

//enum in closure
var enumClosure : (season) -> () = { (enumCase) -> () in
    
    switch enumCase{
    case .winter :
        print("current season is winter")
    case .summer :
        print("current season is summer")
    case .monsoon :
        print("current season is monsoon")
    case .spring :
        print("current season is spring")
    default :
        print("not matched")
        
    }

}
enumClosure(.winter)


//enum
for i in season.allCases{
    print(i)
}

// enum with row value

enum Size : Int{
    case small = 10
    case medium = 20
    case large = 30
}
var result = Size.small.rawValue

print(Size.large.rawValue)
print(type(of: Size.large.rawValue))
print(result)

//swift enum associated value ( sometimes we may want to attach additional information to enum values. These additional information attached to enum values are called associated values.)
enum Leptop {
    case name(String) //associated string vlaue
    
}

var brand = Leptop.name("Hp")
print(brand)

//

enum Distance {
    case meter(Int)
    case km(Int)
}
var dist1 = Distance.meter(2000)
print(dist1)

var dist2 = Distance.km(2)
print(dist2)

//
enum Marks{
    case spi(Double,Double,Double)
    case cpi(Double,Double,Double)
}
var m1 = Marks.spi(8.3, 8.7, 9.3)
print(m1)

var m2 = Marks.cpi(8.2,8.5,8.9)
print(m2)

print(type(of: m1))
//Named Associated Values

enum City {
    case metrocity(name : String)
}

var cityName = City.metrocity(name: "Ahamdabad")
print(cityName)

//
/*
 Raw Values VS Associated Values :
 -raw values are predefined constant values provided to each enum value.
 
 enum Vehicle: String {

   case car = "Four Wheeler"
   case bike = "Two Wheeler"
 }
 -associated values are more like variables associated with the enum values.
 enum Marks {
   
   case grade(String)
   case gpa(Double)
 }
 
 we assign the associated value to the enum value while creating a variable.
 
 
 ///Note :
 
 An enum cannot have both raw values and associated values at the same time.
 The raw values of an enum must be of the same data type. But associated values can be of any type.
 */

//Implicitly Assigned Raw Values
//when integers are used for raw values, the implicit value for each case is one more than the previous case. If the first case doesn’t have a value set, its value is 0.
enum Planet: Int,CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

for i in Planet.allCases{
    print(i.rawValue)
}
//optionals
let xyz = Planet(rawValue: 3)
print(xyz ?? 0)
//

//Recursive Enumerations -A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases. You indicate that an enumeration case is recursive by writing indirect before it, which tells the compiler to insert the necessary layer of indirection.



indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
}

func solution(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value1) :
        return value1
    case .Addition(let value1, let value2) :
        return solution(expression: value1) + solution(expression: value2)
    }
}


var ten = ArithmeticExpression.Number(10)
var twenty = ArithmeticExpression.Number(20)
var sum = ArithmeticExpression.Addition(ten, twenty)
var endSolution = solution(expression: sum)
print(endSolution)
