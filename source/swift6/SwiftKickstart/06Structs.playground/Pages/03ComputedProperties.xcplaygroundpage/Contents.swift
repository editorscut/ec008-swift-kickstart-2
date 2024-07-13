//: ### Computed Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
  private(set) var x, y: Double
  
  var magnitude: Double {
    get {
      (x * x + y * y).squareRoot()
    }
    set {
      let multiplier = newValue/magnitude
      x *= multiplier
      y *= multiplier
    }
  }
}

let point = Vertex(x: 3.0, y: 4.0)
point.magnitude

var stretchedPoint = point
stretchedPoint.magnitude = 10
stretchedPoint.x
stretchedPoint.y
stretchedPoint.magnitude
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)



