func hello(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        var tempGreeting = ""
        for person in people {
            tempGreeting += "\nHello, \(person)!"
        }
        return (people.count, tempGreeting)
}

let result = hello(peopleNamed: "Thing One", "Thing Two")

result.count
result.greeting

let greetingFunction = hello

greetingFunction("A", "B")
