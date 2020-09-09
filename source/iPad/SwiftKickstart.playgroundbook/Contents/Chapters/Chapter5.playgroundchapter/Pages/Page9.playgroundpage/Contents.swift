enum PrimaryColor : String {
  case red
  case yellow
  case blue
}

enum Desktop {
  case black
  case color(PrimaryColor)
}
//extension Desktop {
//  var colorString: String {
//    let colorString : String
//    switch  self {
//    case .color(let primaryColor):
//      colorString = primaryColor.rawValue
//    default:
//      colorString = "black"
//    }
//    return colorString
//  }
//}

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


let backgrounds = [Desktop.color(.yellow), .black,
                   .color(.red), .color(.blue)]

//colorString(from: backgrounds[0])
//colorString(from: backgrounds[1])
//colorString(from: backgrounds[2])
//colorString(from: backgrounds[3])

//let colorStrings
//  = backgrounds.map(\.colorString)

let colorStrings
  = backgrounds.map(\.description)

colorStrings
