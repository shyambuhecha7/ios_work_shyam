import UIKit

//1 Create following string manipulation functions using string extensions:
var word: String = "Good "

extension String {
    func add(){
        print(word + "Morning")
    }
}
word.add()

//2.Add a character in a string at 5th position


extension String {
   mutating func addCharAtPosition(addChar: Character) {
       var stringIndex = self.index(self.startIndex, offsetBy: 5)
        self.insert(addChar, at: stringIndex)
    }
}

var string = "Hello"
string.addCharAtPosition(addChar: "!")
print(string)

//3. Replace one character with other in a string
extension String {
    func replaceChar(characterOld: String, newChar: String) -> String {
        self.replacingOccurrences(of: characterOld, with: newChar)
    }
}
var myName = "Shyam"
print(myName.replaceChar(characterOld: "a", newChar: "A"))

//4. Remove white spaces from string
extension String {
    func removeSpace() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }
}
var good = "G O O D"
var goodWithoutSpace = good.removeSpace()
print(goodWithoutSpace)

//5. Get number of words in a string
extension String {
    func wordCount() -> Int {
        self.split(separator: " ").count
    }
}

var statement = "Hoe are you?"
var wordCount = statement.wordCount()
print(wordCount)

