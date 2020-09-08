//: ### Extensions
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
var number = 2

extension Int {
  mutating func double() {
    self = self * 2
  }
}

extension Int {
  func doubled() -> Int {
    self * 2
  }
}

number.double()
number

number.doubled()
number
number = number.doubled()
number
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
