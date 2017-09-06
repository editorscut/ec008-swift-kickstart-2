//: ### Composition
//: [TOC](00TOC) | [Previous](@previous) | Next
class Attendee {
    let name: String
    init(name: String) {
        self.name = name
    }
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}

extension Attendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

class TutorialAttendee: Attendee {
    let tutorial: String
    init(name: String, tutorial: String) {
        self.tutorial = tutorial
        super.init(name: name)
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}
//: [TOC](00TOC) | [Previous](@previous) | Next


