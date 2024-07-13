//: ### Methods
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
      .foregroundStyle(color())
  }
}

let crayon = PrimaryColor.blue
crayon.color()
let paintBrush = PrimaryColor.yellow
paintBrush.color()

import PlaygroundSupport
PlaygroundPage.current.setLiveView(paintBrush.circle())


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

