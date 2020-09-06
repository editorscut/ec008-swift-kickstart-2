//: ### Reference Types
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
class Attendee {
    var name = "Daniel"
    let hometown = "Shaker Heights"
}

let person1 = Attendee()
let person2 = person1
person1.name
person2.name
person1.name = "Kimberli"
person1.name
person2.name
person2.name = "Maggie"
person1.name
person2.name
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

