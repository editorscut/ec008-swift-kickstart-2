//: ### Numerical Raw Values
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import SwiftUI

enum PrimaryColor: Double {
  case red
  case yellow = 0.16667
  case blue = 0.6667
}

extension PrimaryColor {
  var display: some View {
    Circle()
      .foregroundStyle(Color(hue: rawValue,
                             saturation: 1,
                             brightness: 1))
  }
}

let crayon = PrimaryColor.yellow
crayon.rawValue

import PlaygroundSupport
PlaygroundPage.current.setLiveView(PrimaryColor.blue.display)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

