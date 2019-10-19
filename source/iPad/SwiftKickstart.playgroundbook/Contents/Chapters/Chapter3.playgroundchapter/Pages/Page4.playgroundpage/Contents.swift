func hello(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        (people.count, people.reduce(""){
            $0 + "\nHello, " + $1 + "!"
        })
}

hello(peopleNamed: "Thing One", "Thing Two")

let result = hello(peopleNamed: "Thing One", "Thing Two")
result.count
result.greeting

//: Introduce a local var and replace reduce() with a for loop

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
