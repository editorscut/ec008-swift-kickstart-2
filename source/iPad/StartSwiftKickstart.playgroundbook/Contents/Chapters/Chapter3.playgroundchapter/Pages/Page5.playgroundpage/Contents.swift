let greeting = "Hi there"

func greetings(to people: String...) -> String {
    var response = ""
    for person in people {
        response += "\n\(greeting), \(person)!"
    }
    return response
}

let result = greetings(to: "Thing One", "Thing Two")
