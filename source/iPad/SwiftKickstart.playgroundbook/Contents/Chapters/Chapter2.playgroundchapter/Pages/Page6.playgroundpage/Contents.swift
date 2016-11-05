func hello(to name: String = "World") -> String {
    return "Hello, \(name)!"
}
hello()
hello(to: "my friend")
