//: ### One Type
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let numbers = [0, 1, 2]
let one = numbers[1]
let two = numbers[2]

let three = one + two

let badNumbers: [Any] = [0, 1, 2, "Hello"]
let badOne = badNumbers[1] as! Int
let badTwo = badNumbers[2] as! Int
let badThree = badOne + badTwo
let badeHello = badNumbers[3] as? Int

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
