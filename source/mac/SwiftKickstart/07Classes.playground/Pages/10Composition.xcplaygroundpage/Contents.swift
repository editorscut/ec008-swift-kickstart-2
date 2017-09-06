//: ### Composition
//: [TOC](00TOC) | [Previous](@previous) | Next
protocol NameBadgeable: CustomStringConvertible {
    func nameBadge() -> String
}
extension NameBadgeable {
    var description: String {
        return nameBadge()
    }
}

struct Attendee: NameBadgeable {
    let name: String
    init(name: String) {
        self.name = name
    }
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}

struct TutorialAttendee: NameBadgeable {
    let tutorial: String
    private let attendee: Attendee
    var name: String {
        return attendee.name
    }
    init(name: String,
         tutorial: String) {
        self.tutorial = tutorial
        self.attendee = Attendee(name: name)
    }
    func nameBadge() -> String {
        return attendee.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = Attendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli",
                                tutorial: "Swiftiness")
//: [TOC](00TOC) | [Previous](@previous) | Next


