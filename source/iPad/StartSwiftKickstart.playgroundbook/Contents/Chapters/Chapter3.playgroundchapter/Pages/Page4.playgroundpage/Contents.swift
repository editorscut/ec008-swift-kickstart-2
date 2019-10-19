func hello(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        (people.count, people.reduce(""){
            $0 + "\nHello, " + $1 + "!"
        })
}

hello(peopleNamed: "Thing One", "Thing Two")
print("Hi")
