struct Vertex {
  var x = 5.0
  let y: Double
}

extension Vertex {
  init(both xAndY: Double) {
    self.init(x: xAndY,
              y: xAndY)
  }
}

//struct Vertex {
//  let x, y: Double
//
//  init(x: Double = 5.0,
//       y: Double) {
//    self.x = x
//    self.y = y
//  }
//  init(both xAndY: Double) {
//    self.init(x: xAndY,
//              y: xAndY)
//  }
//}

let same = Vertex(both: 2.0)
same.x
same.y

let point = Vertex(x: 3.0,
                   y: 4.0)
point.x
point.y

let otherPoint = Vertex(y: 7.0)
otherPoint.x
otherPoint.y
