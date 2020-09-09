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

let blackBackground = Desktop.black
let whiteBackground = Desktop.white
let redBackground = Desktop.color(.red)
let yellowBackground = Desktop.color(.yellow)
