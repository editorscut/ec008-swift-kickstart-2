let someone = "Swift Programmer"

func hello(peopleNamed people: String...) {
    for person in people {
        print("Hello, \(person)!")
    }
}
