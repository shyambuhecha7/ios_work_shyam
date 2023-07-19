import UIKit

var greeting = "Control Flow"


/*    For-in Loop


 */

var arr = ["A","B","C","D","E","F","G","H"]

for i in arr{
    print("\(i)")
}
//
print("----------------------------------------")

//2's multi.table
for i2 in 1...10{
    print("\(i2) : 2 * \(i2) = \(2*i2))")
}

print("----if we not need index that time we ignore index using underscore -----------")

var m = 2
var n = 3
for _ in 1...5{
    m+=n
}
print(m)

print("\n----for in with where clause-----------")

for i in arr where i == "A"{
    print("\(i)",terminator: " ")
}

print("\n----for in with Range -----------")

for i in 1...5 {
    print("\(i)",terminator: " ")
}

print("\n----for in with stride fun. -----------")

for i in stride(from: 1, to: 10, by: 2){
    print(i)
}

print("\n-----------------------------------While Loop--------------------------------------------")

var i1 = 1,no=5

while(i1<=no){
    print(i1)
    i1=i1+1
}
print("\n-----------------------------------Repeat While Loop--------------------------------------------")

//it is execute one time even condition is false



var i3 = 1, n3 = 5


repeat {
  
  print(i3)

  i3 = i3 + 1

} while (i3 <= n3)


print("\n-----------------------------------nested for Loop--------------------------------------------")

//nested for

for i4 in 1...5{
    print("\(i4) : ",terminator: "")
    for j4 in 1...5{
        print("\(j4)",terminator: " ")
    }
    print("\n")
}
print("\n-----------------------------------if else--------------------------------------------")

var num = 10

if(num%2 == 0){
    print("\(num) is even")
}else{
    print("\(num) is odd")
}


print("\n-----------------------------------nested if else--------------------------------------------")

var number = 0

if (number > 0) {
    print("Number is positive.")
}

else if (number < 0) {
    print("Number is negative")
}

else {
    print("Number is 0.")
}







print("\n-----------------------------------swich case--------------------------------------------")


var day = 5

switch day{
  case 1:
    print("Sunday")
        break
  case 2:
    print("Monday")
        break
  case 3:
    print("Tuesday")
        break
  case 4:
    print("Wednesday")
        break
  case 5:
    print("Thursday")
        break
  case 6:
    print("Friday")
        break
  case 7:
    print("Saturday")
        break
  default:
    print("Invalid day")
}
print("\n-------------------------------------------------------------------------------")

var age = 21

switch age {
case 1...16 :
    print("teen")
case 17...45 :
    print("adult")
default :
    print("old")
}

//

for i12 in 1...5{
    if(i12 == 2){
        continue
    }
    
    print("\(i12)")
}


//
var nn = NSObject()
var mm = NSObject()

var temp = nn
var ans = (nn === temp)
if( ans ) {
    print("true")
}else{
    print("false")
}

//
var c1 = 0
repeat{
    print("repeate")
    c1+=1
}while(c1 > 3)

//fallthrought
var number1 = 10

switch number1{
case 5 :
      print("5")
      break
case 10 :
    print("10")
    fallthrough
case 20 :
    print("20")
         
default:
    print("not match")
}

















