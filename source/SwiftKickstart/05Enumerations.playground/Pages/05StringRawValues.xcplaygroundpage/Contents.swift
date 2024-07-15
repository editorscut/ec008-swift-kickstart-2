//: ### String Raw Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor: String {
    case red =  "Maraschino"
    case yellow
    case blue = "Blueberry"
}

let crayon = PrimaryColor.yellow
crayon.rawValue

let paintBrush = PrimaryColor.red
paintBrush.rawValue

let marker = PrimaryColor(rawValue: "Blueberry")

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

