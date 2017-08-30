//: ### Variadic Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello(peopleNamed people: String...) {
    if people.isEmpty {
        print("There's no one to greet.")
    } else {
        for person in people {
            print("Hello, \(person)!")
        }
    }
}

hello()
hello(peopleNamed: "Thing One", "Thing Two")

//: This version returns a String instead of printing
func hello2(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    } else {
        return people.reduce(""){$0 + "\nHello, " + $1 + "!"}
    }
}

hello2()
hello2(peopleNamed: "Thing One", "Thing Two")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
