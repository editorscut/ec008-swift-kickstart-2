//: ### Variadic Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello(_ people: String...) -> String {
  guard !people.isEmpty else {
    return "There is no one to greet."
  }
  var response = ""
  for person in people {
    response +=  "Hello, \(person)!\n"
  }
  return response
}

hello()

hello("Thing One", "Thing Two")

func greet(_ people: String...,
           using greetings: String...)  { // error here
  for person in people {
    for greeting in greetings {
      print("\(greeting), \(person)!")
    }
  }
}

greet("Thing One", "Thing Two",
      using: "Hello", "Bonjour")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
