let vertex = Vertex(x: 3, y: 4)
let rectangle = Rectangle(topLeftCorner: vertex, width: 100, height: 50)
 
let movedVertex = vertex.movedHorizontally(by: 10)
let movedTwiceVertex = movedVertex.movedHorizontally(by: 10)

vertex.location
rectangle.location

let shiftedLeftVertex = shiftedLeft(movable: vertex)
let shiftedLeftRectangle = shiftedLeft(movable: rectangle)

let shiftedRightVertex = vertex.shiftedRight()
let shiftedRightRectangle = rectangle.shiftedRight()
