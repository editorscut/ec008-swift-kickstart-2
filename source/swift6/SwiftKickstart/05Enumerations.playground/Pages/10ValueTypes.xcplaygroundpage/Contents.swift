//: ### Value Types
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor: String {
    case red
    case yellow
    case blue
}

enum Desktop: Equatable {
    case black
    case color(PrimaryColor)
}

extension Desktop: CustomStringConvertible {
    var description: String {
        let colorString : String
        switch  self {
        case .color(let primaryColor):
            colorString = primaryColor.rawValue
        default:
            colorString = "black"
        }
        return colorString
    }
}

var color1 = PrimaryColor.red
var color2 = color1
color1 = .yellow
color2 = .blue

color1

color2

color1 == color2
let color3 = PrimaryColor.yellow
color1 == color3

let desktop1 = Desktop.black
let desktop2 = Desktop.color(color1)
let desktop3 = Desktop.color(color3)

desktop1 == desktop2
desktop2 == desktop3
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

