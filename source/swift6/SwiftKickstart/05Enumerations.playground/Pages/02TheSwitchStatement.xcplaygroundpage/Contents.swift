//: ### The switch Statement
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import SwiftUI

enum PrimaryColor {
    case red
    case yellow
    case blue
}

func color(from primaryColor: PrimaryColor) -> Color {
  switch primaryColor {
  case .red: Color.red
  case .yellow: Color.yellow
  case .blue: Color.blue
  @unknown default: fatalError("Switch is not exhaustive")
  }
}

color(from: .red)

color(from: .yellow)

color(from: .blue)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

