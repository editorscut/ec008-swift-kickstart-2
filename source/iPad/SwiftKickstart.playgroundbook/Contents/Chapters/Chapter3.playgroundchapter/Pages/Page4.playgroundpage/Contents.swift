func hello2(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        var tempGreeting = ""
        for person in people {
            tempGreeting += "\nHello, \(person)!"
        }
        return (people.count, tempGreeting)
}

let result2 = hello2(peopleNamed: "Thing One", "Thing Two")
result2.count
result2.greeting
