//: ### Computed Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import SwiftUI

enum PrimaryColor {
    case red
    case yellow
    case blue
 
    func color() -> Color {
        switch self {
        case .red: Color.red
        case .yellow: Color.yellow
        case .blue: Color.blue
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

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
