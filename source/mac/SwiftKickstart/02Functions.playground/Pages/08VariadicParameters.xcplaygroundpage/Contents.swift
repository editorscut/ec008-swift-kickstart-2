//: ### Variadic Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
// if version
//func hello(peopleNamed people: String...) {
//    if people.isEmpty {
//        print("There's no one to greet.")
//    } else {
//        for person in people {
//            print("Hello, \(person)!")
//        }
//   }
//}

// guard version
func hello(peopleNamed people: String...) -> String {
  guard !people.isEmpty  else {
    return "There's no one to greet."
  }
  var response = ""
  for person in people {
    response += "Hello, \(person)!\n"
  }
  return response
}

hello(peopleNamed: "Thing One", "Thing Two")

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
