//: ### String Raw Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
enum Color : String {
    case red = "Maraschino"
    case green
    case blue = "Blueberry"
}

let crayon = Color.green
crayon.rawValue

let paintBrush = Color.red
paintBrush.rawValue

let marker = Color(rawValue: "Blueberry")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
