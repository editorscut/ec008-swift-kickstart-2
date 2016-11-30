//: ### Computed Properties
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
}

let crayon = Color.blue
crayon.uiColor()

let paintBrush = Color.red
paintBrush.uiColor()

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
