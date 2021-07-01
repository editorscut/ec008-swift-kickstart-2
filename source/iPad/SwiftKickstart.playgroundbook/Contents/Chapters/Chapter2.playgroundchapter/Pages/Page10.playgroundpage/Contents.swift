func hello(_ people: String...) -> (count: Int,
                                    response: String) {
  var response = ""
  for person in people {
    response += "Hello, \(person)!\n"
  }
  return (people.count, response)
}

hello("Thing One", "Thing Two")

hello("Thing One", "Thing Two").0
hello("Thing One", "Thing Two").1

hello("Thing One", "Thing Two").count
hello("Thing One", "Thing Two").response
