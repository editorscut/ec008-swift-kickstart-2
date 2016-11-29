//: ### Binding Associated Values
//: [TOC](TOC) | [Previous](@previous) | Next

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

let backgrounds = [Desktop.black, .color(.red), .white, .color(.blue)]

//: [TOC](TOC) | [Previous](@previous) | Next
