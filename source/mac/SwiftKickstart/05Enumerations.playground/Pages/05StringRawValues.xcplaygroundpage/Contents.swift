//: ### String Raw Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor: String {
    case red = "Maraschino"
    case yellow
    case blue = "Blueberry"
}

let crayon = PrimaryColor.yellow
crayon.rawValue
let paintBrush = PrimaryColor.red
paintBrush.rawValue

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

