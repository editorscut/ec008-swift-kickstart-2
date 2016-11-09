//: ### Using Variables and Constants
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
func hello(peopleNamed people: String...) -> (count: Int, greeting: String) {
    var tempGreeting = ""
    for person in people {
        tempGreeting += "\nHello, \(person)!"
    }
    return (people.count, tempGreeting)
}

let result = hello(peopleNamed: "Thing One", "Thing Two")

result.count
result.greeting

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
