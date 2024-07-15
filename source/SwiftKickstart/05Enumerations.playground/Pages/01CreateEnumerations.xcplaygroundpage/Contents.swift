//: ### Create Enumerations
//: [TOC](00TOC) | Previous | [Next](@next)
enum PrimaryColor: CaseIterable, Comparable {
  case red
  case yellow
  case blue
}

let paintBrush: PrimaryColor
var crayon = PrimaryColor.red
crayon = .yellow
paintBrush = .blue
let marker = PrimaryColor.yellow

let colors = PrimaryColor.allCases

let numberOfPrimaryColors = colors.count

crayon == marker
crayon == paintBrush
crayon != paintBrush

crayon < paintBrush
crayon < marker
crayon <= marker
//: [TOC](00TOC) | Previous | [Next](@next)

