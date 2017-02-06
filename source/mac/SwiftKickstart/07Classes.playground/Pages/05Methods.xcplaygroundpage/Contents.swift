//: ### Methods
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
class Attendee {
    let name : String
    let hometown : String
    
    init(name: String,
         hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
    func nameBadge() -> String {
        return "Hello, I'm \(name) from \(hometown)."
    }
}

extension Attendee : CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

class TutorialAttendee : Attendee {
    let tutorial : String
    init(name: String,
         tutorial: String,
         hometown : String = "Cupertino"){
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = Attendee(name: "Daniel",
                      hometown: "Shaker Heights")
let kimberli = TutorialAttendee(name: "Kimberli",
                                tutorial: "Swiftiness")
daniel.nameBadge()


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
