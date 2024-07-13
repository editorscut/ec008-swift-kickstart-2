//: ### willSet didSet
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
  private(set) var x, y: Double
  
  var magnitude: Double {
    get {
      (x * x + y * y).squareRoot()
    }
    set {
      guard magnitude != 0 else {return}
      let multiplier = newValue / magnitude
      x *= multiplier
      y *= multiplier
    }
  }
}

var point = Vertex(x: 3.0, y: 4.0)
//point.count
point.magnitude = 10
//point.count
point.magnitude = 0
//point.count
point.magnitude
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
