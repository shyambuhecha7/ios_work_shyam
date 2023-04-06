import UIKit

var greeting = "Hello, playground"
//FUNCTION DEFINE INTO CLASS IS CALLED METHOD


//instance method - Instance methods are functions that belong to instances of a particular class, structure, or enumeration

class Method{
    
    var num = 10
    
    func printNum(){
        print(num)
    }
}

var obj = Method()

obj.printNum()

//Swift static Methods :
//we can also create static methods inside a struct and class

class Calc{
    
    static func add(n1 : Int){
        print(n1 + 10)
    }
}

Calc.add(n1: 20) // call without creating object

/*
 Self Propery : Every instance of a type has an implicit property called self,
 - Sometimes the name of a property and the name of a method parameter might be the same
 self refer object property
 */
class A{
    var a : Int = 10
    
    func show(a : Int){
        if(self.a < a){
            print("para is greter")
        }else{
            print("para is not greter")
        }
    }
}


//Swift mutating Methods



struct Employee{
  var salary = 15
  
  // define mutating function
  mutating func salaryIncrement(increase: Int) {

  // modify salary property
  salary = salary + increase
  print("Increased Salary:",salary)
  }
}

var employee1 = Employee()
employee1.salary = 40000
employee1.salaryIncrement(increase: 10000)


/*
 Modifying Value Types from Within Instance Methods :
 Structures and enumerations are value types. By default, the properties of a value type can’t be modified from within its instance methods.
 */


