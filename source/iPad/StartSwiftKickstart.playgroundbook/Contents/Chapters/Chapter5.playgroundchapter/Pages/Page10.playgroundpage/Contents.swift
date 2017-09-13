enum PrimaryColor {
    case red
    case yellow
    case blue
}

var color1 = PrimaryColor.red
var color2 = color1
color1 = .yellow
color2 = .blue

color1
color2

let color3 = PrimaryColor.blue
let color4 = PrimaryColor.blue

color3 == color4
