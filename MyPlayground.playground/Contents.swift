import UIKit

var greeting = "Hello, playground"

class User {
    var fname : String = ""
    var lname : String = " "
    
    
}
class Authenticator {
    func authenticate(username : String,onSuccess :@autoclosure () -> (), onFailure :@autoclosure  () -> ()){
        if(username == "Shyam@buhecha"){
            onSuccess()
        }else{
            onFailure()
        }
    }
}


var user = User()
user.fname = "Shyam"
user.lname = "buhecha"

var username = user.fname + "@" + user.lname


var auth = Authenticator()



auth.authenticate(username: username,onSuccess: print("onSuccess") , onFailure: print("onFailure"))


//




/*

 */

struct A{
    var a : Int = 0
    
    func ab(){
        print("AB")
    }
    
}
var ab = A()
print("\(ab.ab())")
