//: ### Storing Functions
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello(to people: String...) -> (count: Int,
                                    greeting: String) {
        var tempGreeting = ""
        for person in people {
            tempGreeting += "\nHello, \(person)!"
        }
        return (people.count, tempGreeting)
}

let result = hello(to: "Thing One", "Thing Two")

result.count
result.greeting

func hello() -> String {
  "Hello, World!"
}

let greetingFunction = hello(to:)

greetingFunction("A", "B")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

