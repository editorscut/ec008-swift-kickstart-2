enum PrimaryColor: CaseIterable {
    case red
    case yellow
    case blue
}
let paintBrush: PrimaryColor
var crayon = PrimaryColor.red
crayon = .yellow
paintBrush = .blue

let colors = PrimaryColor.allCases
let number = colors.count
