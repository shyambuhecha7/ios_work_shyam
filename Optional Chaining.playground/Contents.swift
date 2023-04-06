import UIKit


/*
optional chaining : Acceess optional value without unwrapping.
 
 it return to value :
  1.if optional contain value that return value
  2.if optional contain nil that return nil
 
 --> if multiple query in method,subscript,property ARE GROUPED TOGETHER failure to one chain will affected to the entire chain and result in "nil" value
 
 --> it is alternative to forse unwrapping
 */
//
//class Sample : Book {
//    var name : Book? //with optional value
//}
//
//class Book {
//    var book = "book"
//}
//var sample = Sample()
//sample.name = Book()
//if let bookname = sample.name?.book {
//    print(bookname)
//}else{
//    print("it is nil ")
//}

//Swift Forced Unwrapping (!)
class A {
    var value : B?
}

class B {
    var b = 10
}

var objA = A()
objA.value = B()

if let a = objA.value?.b{
    print("value : \(a)")
}else{
    print("it is nil")
}

//Defining Model Classes for Optional Chaining and

class Model {
    var title : String?
    var image : Int?
    var artical : String?
    
    func fullArtical(){
        if let title = title, let image = image, let artical = artical {
            print( "title : \(title), image : \(image) , artical : \(artical)")
        }else{
           print("it is nil value")
        }
    }
}

var modeOptional = Model()
modeOptional.title = "what is optional chaining? "
modeOptional.image = 1
modeOptional.artical = "optional chaining is .......... "

modeOptional.fullArtical()

/*
 Accessing Properties Through Optional Chaining :
 As demonstrated in Optional Chaining as an Alternative to Forced Unwrapping, you can use optional chaining to access a property on an optional value, and to check if that property access is successful.
 */

class Person3 {
    var residence : Residence?
    
   
}

class Residence {
    var room = 10
    
    func personEat(){
        print("")
    }
}

var objPerson3  =  Person3()
objPerson3.residence? = Residence()


objPerson3.residence
if (objPerson3.residence?.personEat() != nil ) {
    print("not nil")
}else{
    print("it is nil")
}

//Failure of an optional chain to retrieve or return a value


var check = objPerson3.residence?.room

if (check != nil){
    print("not nil")
}else{
    print("it is nil")
}


var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[1] = 45
print(testScores["Dave"]?[1])

//



//Linking Multiple Levels of Chaining

class X {
    var x : Int?
    
}
class Y {
    var y : Int?
}

class Z {
    var z = 20
}
//
//var m = X()
//m.x = Y()
//m.x?.y = Z
//if let value = m?.x?.

// 

func add() throws {
    throw
}
