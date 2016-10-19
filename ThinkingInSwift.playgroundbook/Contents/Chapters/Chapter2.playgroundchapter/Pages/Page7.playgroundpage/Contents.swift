func hello(peopleNamed people: String...) {
    if people.isEmpty {
        print("No one to greet.")
    }
    for person in people {
        print("Hello, \(person)!")
    }
}
hello()
hello(peopleNamed: "Thing One", "Thing Two")