enum PrimaryColor : String {
    case red
    case yellow
    case blue
}

enum Desktop {
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

func colorString(from desktop: Desktop) -> String {
    let colorString : String
    switch  desktop {
    case .color(let primaryColor):
        colorString = primaryColor.rawValue
    default:
        colorString = "black"
    }
    return colorString
}

let backgrounds = [Desktop.color(.yellow), .black,
                   .color(.red), .color(.blue)]

let colorStrings = backgrounds.map{$0.description}
colorStrings
