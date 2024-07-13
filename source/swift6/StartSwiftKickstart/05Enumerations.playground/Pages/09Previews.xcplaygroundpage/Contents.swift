//: ### Previews
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor : String {
    case red
    case yellow
    case blue
}

enum Desktop {
    case black
    case color(PrimaryColor)
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

colorString(from: backgrounds[0])
colorString(from: backgrounds[1])
colorString(from: backgrounds[2])
colorString(from: backgrounds[3])

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

