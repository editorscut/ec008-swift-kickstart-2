//: ### Associated Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor {
    case red
    case yellow
    case blue
}

enum Desktop {
  case black
  case white
  case color(PrimaryColor)
}

let blackBackground = Desktop.black
let whiteBackground = Desktop.white

let redBackground = Desktop.color(.red)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

