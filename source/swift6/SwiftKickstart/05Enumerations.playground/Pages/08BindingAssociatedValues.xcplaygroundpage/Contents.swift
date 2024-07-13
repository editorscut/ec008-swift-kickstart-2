//: ### Binding Associated Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum PrimaryColor : String {
    case red
    case yellow
    case blue
}

enum Desktop {
  case black
  case color(PrimaryColor)
  case tiled(PrimaryColor,
             PrimaryColor,
             Int,
             Int)
  
  func isRed() -> Bool {
    if case .color(let primaryColor) = self,
                       primaryColor == .red {
      return true
    } else {
      return false
    }
  }
}

let backgrounds: [Desktop] = [.color(.yellow), .black,
                              .color(.red), .color(.blue)]

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

colorString(from: backgrounds[0])
colorString(from: backgrounds[1])
colorString(from: backgrounds[2])
colorString(from: backgrounds[3])

backgrounds[0].isRed()
backgrounds[1].isRed()
backgrounds[2].isRed()
backgrounds[3].isRed()

func removeReds(from array: [Desktop]) -> [PrimaryColor] {
  var tempArray = [PrimaryColor]()
  for case .color(let primaryColor) in array
  where primaryColor != .red {
    tempArray.append(primaryColor)
    
  }
  return tempArray
}

removeReds(from: backgrounds)

let tiledBackground
    = Desktop.tiled(.red, .yellow, 5, 3)

switch tiledBackground {
case let .tiled(firstColor,
                                 secondColor,
                                 numberOfRows,
                                 numberOfColumns):
    print("The \(numberOfRows) x \(numberOfColumns) grid "
        + "is \(firstColor) and \(secondColor)")
default:
    print("It's not tiled")
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)



