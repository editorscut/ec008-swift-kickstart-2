//: ### Variadic Parameters
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

func hello(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    } else {
        return people.reduce(""){$0 + "\nHello, " + $1 + "!"}
    }
}
hello()
hello(peopleNamed: "Thing One", "Thing Two")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)