import UIKit

var greeting = "Hello,Set playground"

//empty set
var emptySet : Set<Int> = []

var set2 = Set<Int>()
type(of: set)

//declare a set
var set : Set<Int> = [1,2,3,4]
print(set)

print(set.count)

print(type(of: set))

print(type(of: set.count))

//check set is empty or not
print(set.isEmpty)
//Any type set is not possible
//var set3 : Set<Any> = [1,2,3,4,"a",1.2]

//insert
set.insert(5)
set.insert(6)
print(set)

//update
set.update(with: 2)
print(set)
//remove
set.remove(4)
print(set)

//remove first
print(set.removeFirst())

//removeall
//set.removeAll()
print(set)

//sorted
var newSortedSet = set.sorted(by: <)
print(newSortedSet)

//randrom element
set.randomElement()

//reversed
set.reversed()

print(set.firstIndex(of: 1))

//iterate
for i in set{
    print(i)
}

print("------------------------set operations------------------------------")

var setA : Set<Int> = [1,2,3,4,5,6,7]
var setB : Set<Int> = [1,2,3]

//union
print("Set A : \(setA)")
print("Set B : \(setB)")

print("Union : \(setA.union(setB))")

print("Intersection : \(setA.intersection(setB))")

//subtracting(a-b) - element of A is not present in setB
print("Subtracting : \(setA.subtracting(setB))")

// element of A and B without same
print("symmetric difference : \(setA.symmetricDifference(setB))")

//subset
print("subset : \(setB.isSubset(of: setA))")

print("superset : \(setA.isSuperset(of: setB))")

print(" \(setA.isDisjoint(with: setB))")

print(setA.isSuperset(of: setB))

print("max : \(setA.max() ?? 0)")

//print(setA.capacity)
//print(setA.removeAll(keepingCapacity: true))
//print(setA.capacity)

print(setA.sorted())

print(setA.contains(1))

setA.forEach{ i in
    print(i)
}


//






var setMethods : Set<Int> = [1,2,3,4,5,6,7,8,9,10]
//filter - it is provide all element on condition
print(setMethods.filter({ $0 > 5}))
print(setMethods)



