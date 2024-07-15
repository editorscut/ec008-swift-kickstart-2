//: ### Create Dictionaries
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let numbers = ["one": 1, "two": 2, "three": 3]

var moreNumbers: [String: Int]

numbers["two"]

print(numbers["two"])

numbers["zero"]

//let two = numbers["two"] ?? 2
//
//let too = numbers["too"] ?? 0

let two = numbers["two", default: 0]
let too = numbers["too", default: 0]


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
