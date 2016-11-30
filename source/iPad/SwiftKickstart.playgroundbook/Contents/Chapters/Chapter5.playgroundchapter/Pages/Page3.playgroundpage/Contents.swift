import UIKit

enum Color {
    case red
    case green
    case blue
    
    func uiColor() -> UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        }
    }
    
    func swatch(width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = uiColor()
        return myView
    }
}

let crayon = Color.blue
crayon.uiColor()
crayon.swatch(width: 10, height: 100)

let paintBrush = Color.red
paintBrush.uiColor()
paintBrush.swatch(width: 100, height: 10)
