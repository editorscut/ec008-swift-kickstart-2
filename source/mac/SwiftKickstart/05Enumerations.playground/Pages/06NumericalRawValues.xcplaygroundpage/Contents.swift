//: ### Numerical Raw Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import UIKit

enum Color : Int {
    case yellow = 1
    case green
    case blue = 4
    case purple
    
    var hue : CGFloat {
        return CGFloat(rawValue)/6
    }
    var uiColor : UIColor {
        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
}

//let crayon = Color.green
//crayon.rawValue
//crayon.hue
//crayon.uiColor

import UIKit

enum Color2 : CGFloat {
    case yellow = 0.16666
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

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

