class Attendee {
    let name: String
    let hometown: String
    
    init(name: String,
         hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
    func nameBadge() -> String {
        "Hello, I'm \(name) from \(hometown)."
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
