class Attendee {
    let name: String
    init(name: String) {
        self.name = name
    }
    func nameBadge() -> String {
        "Hi, I'm \(name)."
    }
}

extension Attendee: CustomStringConvertible {
    var description: String {
        nameBadge()
    }
}

class TutorialAttendee: Attendee {
    let tutorial: String
    init(name: String, tutorial: String) {
        self.tutorial = tutorial
        super.init(name: name)
    }
    override func nameBadge() -> String {
        super.nameBadge() + " I'm taking \(tutorial)."
    }
}
