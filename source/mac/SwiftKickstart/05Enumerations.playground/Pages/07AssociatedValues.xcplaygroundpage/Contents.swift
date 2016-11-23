//: ### Associated Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

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
let redBackground = Desktop.color(PrimaryColor.red)
let yellowBackground = Desktop.color(.yellow)
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
