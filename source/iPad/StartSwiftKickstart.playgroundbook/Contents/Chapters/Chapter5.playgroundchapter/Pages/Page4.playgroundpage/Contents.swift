import SwiftUI

enum PrimaryColor {
    case red
    case yellow
    case blue
 
    func color() -> Color {
        switch self {
        case .red:
            return Color.red
        case .yellow:
            return Color.yellow
        case .blue:
            return Color.blue
        }
    }
    
    func circle() -> some View {
        Circle()
            .foregroundColor(color())
    }
}

Circle().foregroundColor(.red)


let crayon = PrimaryColor.blue
crayon.color()

let paintBrush = PrimaryColor.red
paintBrush.color()

