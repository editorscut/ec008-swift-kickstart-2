//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import SwiftUI

enum PrimaryColor {
    case red
    case yellow
    case blue
  
  var color: Color {
      switch self {
      case .red:
          return Color.red
      case .yellow:
          return Color.yellow
      case .blue:
          return Color.blue
      }
  }
  func circle() -> some View {
    Circle().foregroundColor(color)
  }
}

let crayon = PrimaryColor.blue
crayon.color
let paintBrush = PrimaryColor.yellow
paintBrush.color

import PlaygroundSupport
PlaygroundPage.current.setLiveView(crayon.circle())
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

