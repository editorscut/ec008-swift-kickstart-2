//: ### Stored Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
  var x = 5.0
  let y: Double
}

extension Vertex {
  init(both xAndY: Double) {
    self.x = xAndY
    self.y = xAndY
  }
}

let point = Vertex(x: 3.0,
                   y: 4.0)
point.x
point.y

let otherPoint = Vertex(y: 7.0)

otherPoint.x
otherPoint.y
let same = Vertex(both: 2.0)
same.x
same.y
