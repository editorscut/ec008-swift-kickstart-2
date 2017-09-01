//: ### Using Variables and Constants
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

func hello(peopleNamed people: String...) -> (count: Int,
    greeting: String) {
        return (people.count, people.reduce(""){
            $0 + "\nHello, " + $1 + "!"
        })
}

hello(peopleNamed: "Thing One", "Thing Two")

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

