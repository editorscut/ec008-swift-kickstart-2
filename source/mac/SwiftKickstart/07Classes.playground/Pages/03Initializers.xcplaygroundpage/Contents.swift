//: ### Initializers
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
//class Attendee {
//  let name: String
//  let hometown: String
//
//  init(name: String, hometown: String) {
//      self.name = name
//      self.hometown = hometown
//  }
//
//  convenience init(name: String) {
//    self.init(name: name,
//              hometown: hometown)
//  }
//}

class Attendee {
  let name: String
  let hometown: String
  
  init(name: String,
       hometown: String = "Cupertino") {
      self.name = name
      self.hometown = hometown
  }
}

let daniel = Attendee(name: "Daniel",
                      hometown: "Shaker Heights")
let kimberli = Attendee(name: "Kimberli")
kimberli.hometown
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


