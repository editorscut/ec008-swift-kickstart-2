//: ### willSet didSet
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

struct Vertex {
  private(set) var count = 0
  private(set) var x: Double {
    willSet {
      count += 1
    }
    didSet {
      if x == 0 {x = oldValue}
    }
  }
  private(set) var y: Double {
    didSet {
      if y == 0 {y = oldValue}
    }
  }

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

//struct Vertex {
//  private(set) var x,y: Double
//
//  var magnitude: Double {
//    get {
//      (x * x + y * y).squareRoot()
//    }
//    set {
//      guard magnitude != 0 else {return}
//      let multiplier = newValue/magnitude
//      x *= multiplier
//      y *= multiplier
//    }
//  }
//}

var point = Vertex(x: 3.0, y: 4.0)
point.count
point.magnitude = 10
point.count
point.magnitude = 0
point.count
point.magnitude

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
