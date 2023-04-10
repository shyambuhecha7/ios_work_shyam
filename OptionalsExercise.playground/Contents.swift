import UIKit

var greeting = "Hello, playground"

//optionals
//1.Create an example of demonstrating How to declare optionals in swift?
var strOutput : String?
var strOutput2 : String = "string"

//2.What is force unwrapping in optionals show usage in example.
var strWrap : String? = " Shyam" //wrap
print(strWrap!) //force unwrapping

//3.Create one example of show usage of optional binding
var numberArray = [1,2,3,4,5]
var max : Int? = numberArray.max() //some time array is empty that to max() return nil that time use optional to handle the situation

print(max ?? " ")
 
//4.Create one example using if-let
var numInt : Int? = 15

if let temp = numInt{
    print(temp)
}else{
    print("value is nil")
}

//5.Create one example using guard-let
var someValue : Int?

func sum(){
    guard let index = someValue else{
        print("value is nil")
        return
    }
    print(index)
}

sum()

//6.Create one example using nil colloison operator
var value : String?
print(value ?? "it is nil")
