//: ### Computed Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import SwiftUI

enum PrimaryColor {
    case red
    case yellow
    case blue
 
  var color:  Color {
        switch self {
        case .red: Color.red
        case .yellow: Color.yellow
        case .blue: Color.blue
        }
    }
    
    func circle() -> some View {
        Circle()
            .foregroundStyle(color)
    }
}

Circle().foregroundStyle(Color.red)


let crayon = PrimaryColor.blue
crayon.color

let paintBrush = PrimaryColor.red
paintBrush.color
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

