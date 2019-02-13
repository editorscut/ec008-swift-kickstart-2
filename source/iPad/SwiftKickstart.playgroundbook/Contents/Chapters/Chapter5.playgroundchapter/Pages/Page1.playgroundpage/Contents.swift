enum Color: CaseIterable {
    case red
    case green
    case blue
}
let paintBrush: Color
var crayon = Color.red
crayon = .green
paintBrush = .blue

let colors = Color.allCases
let number = colors.count
