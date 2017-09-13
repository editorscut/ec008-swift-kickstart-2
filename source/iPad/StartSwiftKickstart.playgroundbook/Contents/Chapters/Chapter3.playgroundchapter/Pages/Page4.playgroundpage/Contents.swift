func hello(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        return (people.count, people.reduce(""){
            $0 + "\nHello, " + $1 + "!"
        })
}

hello(peopleNamed: "Thing One", "Thing Two")
