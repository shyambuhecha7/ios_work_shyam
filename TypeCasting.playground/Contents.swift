import UIKit

var greeting = "Hello, playground"

// Type casting is a way to check the type of an instance,
//Type casting in Swift is implemented with the is and as operators.
// is, as, as?, as!

class MediaItem {
    var name : String
    
    init(name : String) {
        self.name = name
    }
}

class Movie : MediaItem {
    var directory : String
    
    init(name : String, directory : String){
        self.directory = directory
        super.init(name : name)
    }
}

class Song : MediaItem {
    var artist : String
    
        init(name: String, artist: String) {
            self.artist = artist
            super.init(name: name)
        }
   
    
    
}
let list = [
    Movie(name : "A",directory : "a1"),
    Song(name : "B", artist : "b1"),
    Song(name : "C", artist : "b3")
     
]

var count1 = 0
var count2 = 0

for item in list{
    if item is Movie {
        count1 += 1
    }else if item is Song {
        count2 += 1
    }
}
print("count1 : \(count1) count2 : \(count2)")


//
for item in list {
    if let movie = item as? Movie {
        print("Movie: \(movie.name))")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

