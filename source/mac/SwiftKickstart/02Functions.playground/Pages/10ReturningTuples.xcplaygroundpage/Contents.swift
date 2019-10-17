//: ### Returning Tuples
//: [TOC](00TOC) | [Previous](@previous) | Next

func hello(peopleNamed people: String...) -> (count: Int, greeting: String) {
    (people.count, people.reduce(""){
        $0 + "\nHello, " + $1 + "!"
    })
}
hello(peopleNamed: "Thing One", "Thing Two")
hello(peopleNamed: "Thing One", "Thing Two").0
hello(peopleNamed: "Thing One", "Thing Two").1

hello(peopleNamed: "Thing One", "Thing Two").count
hello(peopleNamed: "Thing One", "Thing Two").greeting

//: [TOC](00TOC) | [Previous](@previous) | Next
