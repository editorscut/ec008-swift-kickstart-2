import SwiftUI

enum PrimaryColor: String {
    case red = "Maraschino"
    case yellow
    case blue = "Blueberry"
}

let crayon = PrimaryColor.yellow
crayon.rawValue
let paintBrush = PrimaryColor.red
paintBrush.rawValue
let marker = PrimaryColor(rawValue: "Blueberry")
