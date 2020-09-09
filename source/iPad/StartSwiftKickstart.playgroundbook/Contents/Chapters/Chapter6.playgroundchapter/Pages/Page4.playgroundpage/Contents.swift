struct Vertex {
    private(set) var x: Double
    private(set) var y: Double
    
    var magnitude: Double {
        get {
          (x * x + y * y).squareRoot()
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}

var point = Vertex(x: 3.0, y: 4.0)
