protocol NameBadgeable: CustomStringConvertible {
    func nameBadge() -> String
}
extension NameBadgeable {
    var description: String {
        nameBadge()
    }
}

struct Attendee: NameBadgeable {
    let name: String
    init(name: String) {
        self.name = name
    }
    func nameBadge() -> String {
        "Hi, I'm \(name)."
    }
}

struct TutorialAttendee: NameBadgeable {
    let tutorial: String
    private let attendee: Attendee
    var name: String {
        attendee.name
    }
    init(name: String,
         tutorial: String) {
        self.tutorial = tutorial
        self.attendee = Attendee(name: name)
    }
    func nameBadge() -> String {
        attendee.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = Attendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli",
                                tutorial: "Swiftiness")
