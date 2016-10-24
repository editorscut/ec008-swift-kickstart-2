//: ### Returning Tuples
//: [TOC](TOC) | [Previous](@previous) | Next
func hello(peopleNamed people: String...) -> (count: Int, peopleList: String) {
    return (people.count, people.reduce("Hello to:"){$0 + "\n " + $1} + ".")
}

hello(peopleNamed: "Thing One", "Thing Two")

hello(peopleNamed: "Thing One", "Thing Two").0
hello(peopleNamed: "Thing One", "Thing Two").1

hello(peopleNamed: "Thing One", "Thing Two").count
hello(peopleNamed: "Thing One", "Thing Two").peopleList
//: [TOC](TOC) | [Previous](@previous) | Next