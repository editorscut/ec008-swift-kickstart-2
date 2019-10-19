//struct Vertex {
//    let x = 3.0
//    let y = 4.0
//}
//
//let point = Vertex()
//point.x
//point.y

struct Vertex {
    let x, y: Double

    init(x: Double = 3.0, y: Double = 4.0) {
        self.x = x
        self.y = y
    }
    init(bothXandY: Double) {
        self.init(x: bothXandY, y: bothXandY)
    }
}

let pointSevenEight = Vertex(x: 7.0, y: 8.0)
let pointThreeFour = Vertex()
let pointTwoFour = Vertex(x: 2.0)
let pointThreeFive = Vertex(y: 5.0)
let pointFiveFive = Vertex(bothXandY: 5.0)
