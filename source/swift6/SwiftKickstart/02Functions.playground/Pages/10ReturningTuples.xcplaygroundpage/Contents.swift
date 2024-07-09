//: ### Returning Tuples
//: [TOC](00TOC) | [Previous](@previous) | Next
func hello(_ people: String...) -> (count: Int,
                                    response: String) {
  var response = ""
  for person in people {
    response += "Hello, \(person)!\n"
  }
  return (people.count, response)
}

hello("Thing One", "Thing Two")
hello("Thing One", "Thing Two").count
hello("Thing One", "Thing Two").response
//: [TOC](00TOC) | [Previous](@previous) | Next
