//: ### String Raw Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum Color: String {
    case red = "Maraschino"
    case green 
    case blue = "Blueberry"
}

let crayon = Color.green
crayon.rawValue
let paintBrush = Color.red
paintBrush.rawValue

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

