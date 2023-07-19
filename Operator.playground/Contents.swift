import UIKit

//Operator

//1.Create example for String concate using operators
var concate_str1 : String = "Hello "
var concate_str2 : String = "World"

print("concate two string using + operator : \(concate_str1 + concate_str2)")

//2.Create one example for show usage of operator's addition, multiplication, division for integers and floats
var firstNum : Int = 20
var secondNum : Int = 10

print("<: Addition of Int :> Number 1 : \(firstNum) Number 2 : \(secondNum) Answer : \(firstNum + secondNum)")
print("<: Multiplication Int :> Number 1 : \(firstNum) Number 2 : \(secondNum) Answer : \(firstNum * secondNum)")
print("<: Division Int :> Number 1 : \(firstNum) Number 2 : \(secondNum) Answer : \(firstNum / secondNum)")


var thirdNum : Float = 200.12
var forthNum : Float = 10.34

print("<: Addition of Float :> Number 1 : \(thirdNum ) Number 2 : \(forthNum) Answer : \(thirdNum  + forthNum)")
print("<: Multiplication of Float :> Number 1 : \(thirdNum ) Number 2 : \(forthNum) Answer : \(thirdNum  * forthNum)")
print("<: Division  of Float :> Number 1 : \(thirdNum ) Number 2 : \(forthNum) Answer : \(thirdNum  / forthNum)")

//3.What is turnery operator and show example of usage?
"""
  Turnery operator : It is contain Three operant.
     syntex : condition  Answer 1
    --> it is check first condition . if it's true than execute first answer otherwise second answer.

"""
let firstValue : Int = 1000
let secondValue : Int = 200
firstValue > secondValue ? print("Number 1 - \(firstValue) is larger than Number 2 :\(secondValue)") : print("Number 1 - \(firstValue) is smaller than Number 2 :\(secondValue)")

