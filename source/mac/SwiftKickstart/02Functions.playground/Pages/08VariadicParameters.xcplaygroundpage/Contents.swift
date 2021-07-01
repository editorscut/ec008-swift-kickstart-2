//: ### Variadic Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
// if version
//func hello(_ people: String...) {
//    if people.isEmpty {
//        print("There's no one to greet.")
//    } else {
//        for person in people {
//            print("Hello, \(person)!")
//        }
//   }
//}

// guard version
func hello(_ people: String...) -> String {
  guard !people.isEmpty  else {
    return "There's no one to greet."
  }
  var response = ""
  for person in people {
    response += "Hello, \(person)!\n"
  }
  return response
}

hello("Thing One", "Thing Two")

func greet(_ people: String...,
           using greetings: String...)  {
  for person in people {
    for greeting in greetings {
      print("\(greeting), \(person)!")
    }
  }
}

greet("Thing One", "Thing Two",
      using: "Hello", "Bonjour")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
