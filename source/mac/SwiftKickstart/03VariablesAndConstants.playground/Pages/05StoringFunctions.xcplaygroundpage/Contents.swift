//: ### Storing Functions
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let greeting = "Hi there"

func greetings(to people: String...) -> String {
    var response = ""
    for person in people {
        response += "\n\(greeting), \(person)!"
    }
    return response
}

func greetings() -> String {
  "Hello, World!"
}

let result = greetings(to: "Thing One", "Thing Two")

let greetingFunction = greetings(to:)

greetingFunction("A", "B") 
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

