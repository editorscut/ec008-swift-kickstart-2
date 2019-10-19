import SwiftUI

enum PrimaryColor: Int {
    case red
    case yellow
    case blue = 4
    
    var hue: Double {
        Double(rawValue)/6
    }
    
    var color: Color {
        Color(hue: hue,
              saturation: 1.0,
              brightness: 1.0)
    }
}

let crayon = PrimaryColor.yellow
crayon.rawValue
crayon.hue
crayon.color

let paintBrush = PrimaryColor.blue
paintBrush.rawValue
paintBrush.hue
paintBrush.color


enum PrimaryColor2: Double {
    case red = 0
    case yellow = 0.16666
    case blue   = 0.666667
    
    var color : Color {
        Color(hue: rawValue,
              saturation: 1.0,
              brightness: 1.0)
    }
}

let crayon2 = PrimaryColor.yellow
crayon2.rawValue
crayon2.hue
crayon2.color
