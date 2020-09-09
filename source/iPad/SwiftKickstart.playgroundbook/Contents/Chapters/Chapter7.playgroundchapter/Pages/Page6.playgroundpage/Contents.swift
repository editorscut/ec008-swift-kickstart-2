class Attendee {
  let name: String
  let hometown: String?
  
  init(name: String,
       hometown: String? = nil) {
    self.name = name
    self.hometown = hometown
  }
  func nameBadge() -> String {
    "Hello, I'm \(name)"
      + possibleLocation + "."
  }
  private var possibleLocation: String {
    guard let hometown = hometown else {return ""}
    return " from \(hometown)"
  }
}

extension Attendee: CustomStringConvertible {
  var description: String {
    nameBadge()
  }
}

let daniel = Attendee(name: "Daniel",
                      hometown: "Shaker Heights")
let kimberli = Attendee(name: "Kimberli")
daniel.nameBadge() // allowed
//daniel.possibleLocation // doesn't compile
