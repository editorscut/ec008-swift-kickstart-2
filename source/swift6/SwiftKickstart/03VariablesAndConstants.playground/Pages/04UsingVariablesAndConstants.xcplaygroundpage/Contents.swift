//: ### Using Variables and Constants
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let greeting = "Hi there"

func greet(_ people: String...) -> String {
  var response = ""
  for person in people {
    response += "\n\(greeting), \(person)!"
  }
  return response
}

let result = greet("Thing One", "Thing Two")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

