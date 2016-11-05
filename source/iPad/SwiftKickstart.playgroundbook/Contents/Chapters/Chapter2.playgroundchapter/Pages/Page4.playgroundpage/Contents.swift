func hello() -> String {
    return hello(name: "World")
}

func hello(name: String) -> String {
    return "Hello, \(name)!"
}
hello()
hello(name: "my friend")
