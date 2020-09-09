let someone = "Swift Programmer"

func hello(_ people: String...) {
  for person in people {
    print("Hello, \(person)!")
  }
}
