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

class TutorialAttendee : Attendee {
    let tutorial : String
    init(name: String, tutorial: String, hometown : String = "Cupertino"){
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
}

let daniel = Attendee(name: "Daniel", hometown: "Shaker Heights")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swiftiness")
daniel.name
daniel.hometown
kimberli.name
kimberli.hometown
kimberli.tutorial

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
