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

//: This version returns a String

func hello2(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    } else {
        var response = ""
        for person in people {
            response += "Hello, \(person)!\n"
        }
        return response
    }
}

hello2()
hello2(peopleNamed: "Thing One", "Thing Two")


//: This version returns a String using reduce
func hello3(peopleNamed people: String...) -> String {
    if people.isEmpty {
        return "There's no one to greet."
    } else {
        return people.reduce(""){$0 + "\nHello, " + $1 + "!"}
    }
}

hello3()
hello3(peopleNamed: "Thing One", "Thing Two")
