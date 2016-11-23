//: ### Numerical Raw Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
import UIKit

//enum Color : Int {
//    case red
//    case green
//    case blue
//    
//    var hue : CGFloat {
//        return CGFloat(rawValue)/3
//    }
//    var uiColor : UIColor {
//        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
//    }
//}

//enum Color : Int {
//    case yellow = 1
//    case green
//    case blue = 4
//    case purple
//    
//    var hue : CGFloat {
//        return CGFloat(rawValue)/6
//    }
//    var uiColor : UIColor {
//        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
//    }
//}
//
//let crayon = Color.green
//crayon.rawValue
//crayon.hue
//crayon.uiColor

enum Color : CGFloat {
    case yellow = 0.166667
    case green  = 0.333333
    case blue   = 0.666667
    case purple = 0.833333
    
    var uiColor : UIColor {
        return UIColor(hue: rawValue, saturation: 1, brightness: 1, alpha: 1)
    }
}

let crayon = Color.green
crayon.rawValue
crayon.uiColor

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
