//: ### Computed Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import UIKit

enum Color {
    case red
    case green
    case blue
    
    var uiColor: UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        }
    }
    
    func swatch(_ width: Int, by height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0,
                                          y: 0,
                                          width: width,
                                          height: height))
        myView.backgroundColor = uiColor
        return myView
    }
}

let crayon = Color.blue
crayon.uiColor

let paintBrush = Color.red
paintBrush.uiColor
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

