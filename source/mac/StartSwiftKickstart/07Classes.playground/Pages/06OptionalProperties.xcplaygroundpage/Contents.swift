//: ### Optional Properties
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class Attendee {
    let name : String
    let hometown : String
    
    init(name: String, hometown: String = "Cupertino") {
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


let daniel = Attendee(name: "Daniel", hometown: "Shaker Heights")
let kimberli = Attendee(name: "Kimberli")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
