import UIKit

var greeting = "Hello, playground"
//Control Flow :

//1
/*
1) Print the powers of 2 that are less than or equal to N.

Input:

var N = 100

Output:

2

8

16

32

64
*/
//ans :
var range = 100
var power = 1
for _ in 1...range {
    power = 2 * power
    if (power<range){
        print(power)
    }else{
        break
    }
}

//2
/*
2) Given an integer N draw a square of N x N asterisks. Look at the examples.

Input:

var N = 3

Output:

***

***

***

*/
//solution :
 
var N1 = 3

for _ in 1...N1{
    for _ in 1...N1{
        print("*",terminator: "")
    }
    print()
}

//3
/*
3) Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.

Input:

var N = 4

Output:

*

**

***

****
*/
//solution
var noOfphase : Int = 4
for index in 1...noOfphase{
    for _ in 1...index{
       print("*",terminator: "")
    }
    print()
}

//4
/*
 4) Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.

 Input:

 var N = 4

 Output:
   *
  ***
 *****
*******
 
 */
//solution :
var N5 : Int = 4

for  i in 1...N5{
    print()
    for _ in 0...N5-i{
        print(" ",terminator: "")
    }
    for _ in 1...i*2-1{
        print("*",terminator: "")
    }
   
}

//5
/*
 
 5)You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).

 Input:

 var number = 17

 Output:

 prime //17 is only divisible by 1 and 17
 */
//Solutions :
print("\n")

var bool_prime : Bool = false;

let prime : Int = 17;

for i in 2...prime-1{

if(prime % i == 0){

bool_prime = false

break;

}

}

if bool_prime == false {

print("\(prime ) prime");

} else {

print("\(prime ) not prime");

}

