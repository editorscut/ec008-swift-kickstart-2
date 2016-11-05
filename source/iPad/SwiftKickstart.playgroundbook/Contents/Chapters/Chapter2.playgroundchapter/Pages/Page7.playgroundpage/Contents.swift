func hello(_ name: String = "World", from city: String = "Cupertino") -> String {
    return "Hello, \(name) who comes from \(city)!"
}
hello()
hello("my friend", from: "London")
hello("my friend")
hello(from: "London")
