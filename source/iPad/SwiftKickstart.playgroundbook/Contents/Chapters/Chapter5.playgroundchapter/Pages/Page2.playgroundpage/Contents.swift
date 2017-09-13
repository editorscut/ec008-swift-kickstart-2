import UIKit

enum Color {
    case red
    case green
    case blue
}

func uiColor(from color: Color) -> UIColor {
    switch color {
    case .red:
        return UIColor.red
    case .green:
        return UIColor.green
    case .blue:
        return UIColor.blue
    }
}

uiColor(from: .red)
uiColor(from: .green)
uiColor(from: .blue)
