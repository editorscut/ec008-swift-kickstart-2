//: ### Methods
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
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
    
    func colorSwatch(width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = uiColor()
        return myView
    }
}

let crayon = Color.blue
crayon.uiColor()
crayon.colorSwatch(width: 10, height: 100)

let paintBrush = Color.red
paintBrush.uiColor()
paintBrush.colorSwatch(width: 100, height: 10)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
