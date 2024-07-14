//: ### Extensions
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
var number = 2

extension Int {
  mutating func doubled() -> Int {
    self * 2
  }
}

number = number.doubled()

number
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
