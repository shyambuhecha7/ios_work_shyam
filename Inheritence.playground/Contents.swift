import UIKit

var greeting = "Hello, playground"

//Defining a Base Class

class BaseClass {
    var string  : String {
        return "it  is a Base Class"
    }
    var count = 10
}


var objBaseClass = BaseClass()
objBaseClass.count
objBaseClass.string

//subclassing

class SomeSubclass : BaseClass {
    
    func subclass(){
        print("it is subclass")
    }
   
}
var s = SomeSubclass()
s.count = 20
print(s.count)

//subclass method
s.subclass()

//Method Overriding
class Mobile {
    func mobileCompanyName(name : String){
        print("company name  : \(name)")
    }
    var price : Int {
        return 20000
    }
}

class MI : Mobile{
   override func mobileCompanyName(name: String) {
        print("company name is : \(name)")
    }
}

var objMobile = MI()
objMobile.mobileCompanyName(name: "Note 6 Pro")

//override getter setter property

class Oppo : Mobile {
    var mobileName = "Oppo"
    override var price: Int {
        return 30000
    }
}
var oppoObj = Oppo()
print(oppoObj.price)

//types
//1.single
class A {
    var a = 10
}

class B : A {
    var b = 20
}

var objB = B()
print(objB.a)

//2.multi level
class C : B {
    var c = 30
}

var objC = C()
objC.a = 50

print(objC.a)

//3.hiarchial

class Student {
    var studentName : String
    init(studentName : String){
        self.studentName = studentName
    }
    
}
class Marks : Student {
    var marks : Int
    
    init(marks : Int){
        self.marks = marks
        super.init(studentName: "mnp")
    }
}

class School : Student  {
    var school : String
    init(school : String){
        self.school = school
        super.init(studentName: "rst")
    }
    
}

var studentSchool = School(school: "Nachiketa")
var studentMarks = Marks(marks: 80)
var studentName = Student(studentName: "xyz")

studentName.studentName

//hybrid

class StudentDetails {
    var details : Bool = true
}

class Student1 : StudentDetails {
    var studentName : String
    init(studentName : String){
        self.studentName = studentName
    }
    
}
class Marks1 : Student1 {
    var marks : Int
    
    init(marks : Int){
        self.marks = marks
        super.init(studentName: "mnp")
    }
}

class School1 : Student1  {
    var school : String
    init(school : String){
        self.school = school
        super.init(studentName: "rst")
    }
    
}

var studentSchool1 = School1(school: "School")
studentSchool1.details

//multiple : not supported
//class X {
//    var x = 10
//}
//class Y {
//    var y = 20
//}
//
//class MultipleInheritence : X,Y {
//    var z = 30
//}
//
//var objMultiple = MultipleInheritence()
//objMultiple.x
//objMultiple.y

//access modifier

