//: ### Previews
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum PrimaryColor : String {
    case red
    case yellow
    case blue
}

enum Desktop {
    case black
    case color(PrimaryColor)
}

extension Desktop : CustomStringConvertible {
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


let backgrounds = [Desktop.color(.yellow), .black, .color(.red), .color(.blue)]

let colorStrings = backgrounds.map{$0.description}
colorStrings


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
