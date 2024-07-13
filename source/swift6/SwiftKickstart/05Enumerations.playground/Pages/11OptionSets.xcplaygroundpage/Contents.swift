//: ### Option Sets
//: [TOC](00TOC) | [Previous](@previous) | Next
struct ColorsWeLove: OptionSet {
  let rawValue: Int
  static let red = ColorsWeLove(rawValue: 1)
  static let green = ColorsWeLove(rawValue: 2)
  static let blue = ColorsWeLove(rawValue: 4)
  
  static let notRed = [ColorsWeLove.green, .blue]
}

let noColors: ColorsWeLove = []
noColors.contains(.red)

noColors.isEmpty

var twoColors: ColorsWeLove = [.red, .blue]
twoColors.contains(.red)

twoColors.contains(.green)

ColorsWeLove.notRed.contains(.blue)

//: [TOC](00TOC) | [Previous](@previous) | Next
