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

crayon == marker
crayon == paintBrush
crayon != paintBrush
crayon < paintBrush
crayon < marker
crayon <= marker

let colors = PrimaryColor.allCases
let numberOfPrimaryColors = colors.count
