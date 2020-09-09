func hello(_ people: String...) -> (count: Int,
                                    greeting: String) {
  (people.count,
   people.reduce(""){
          $0 + "\nHello, " + $1 + "!"
      }
  )
}

hello("Thing One", "Thing Two")

hello("Thing One", "Thing Two").0
hello("Thing One", "Thing Two").1

hello("Thing One", "Thing Two").count
hello("Thing One", "Thing Two").greeting
