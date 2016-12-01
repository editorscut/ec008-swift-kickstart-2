//: ### Initializers
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
class Attendee {
    let name : String
    let hometown : String
    
    init(name: String, hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
}

let daniel = Attendee(name: "Daniel", hometown: "Shaker Heights")
let kimberli = Attendee(name: "Kimberli")

daniel.name
daniel.hometown
kimberli.name
kimberli.hometown

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
