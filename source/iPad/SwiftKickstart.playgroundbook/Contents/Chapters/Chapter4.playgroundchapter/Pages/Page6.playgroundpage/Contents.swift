let numbers = [0, 1, 2]
let one = numbers[1]
let two = numbers[2]
let three = one + two

let badNumbers: [Any] = [0, 1, 2, "Hello"]
let badOne = badNumbers[1] as! Int
let badTwo = badNumbers[2] as! Int
let badThree = badOne + badTwo
//let badHello = badNumbers[3] as! Int
//if badNumbers[3] is Int {
//    let badHello = badNumbers[3] as! Int
//}
let badHello = badNumbers[3] as? Int
