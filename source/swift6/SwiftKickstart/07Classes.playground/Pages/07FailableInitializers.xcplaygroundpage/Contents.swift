//: ### Failable Initializers
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
typealias AttendeeInput = [String : String]
let nameKey = "name"
let hometownKey = "hometown"

class Attendee {
  let name: String
  let hometown: String
  
  init?(_ dictionary: AttendeeInput) {
    guard let name = dictionary[nameKey],
          let hometown = dictionary[hometownKey]
    else {return nil}
    self.name = name
    self.hometown = hometown
  }
}

let danielInput = [nameKey: "Daniel",
                   hometownKey: "Shaker Heights"]
let kimberliInput = [nameKey: "Kimberli"]

let daniel = Attendee(danielInput)
let kimberli = Attendee(kimberliInput)

daniel?.name
kimberli?.name
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


