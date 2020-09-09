func hello(_ people: String...) -> (count: Int,
                                    greeting: String) {
        var tempGreeting = ""
  for person in people {
    tempGreeting += "\nHello, \(person)!"
  }
  return (people.count, tempGreeting)
}

let result = hello("Thing One", "Thing Two")

result.count
result.greeting
