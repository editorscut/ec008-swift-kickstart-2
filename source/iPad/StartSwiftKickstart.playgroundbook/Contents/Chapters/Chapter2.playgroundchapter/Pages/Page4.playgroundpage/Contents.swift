func hello() -> String {
    return "Hello, World!"
}

func hello(name: String) -> String {
    return "Hello, \(name)!"
}

hello()
hello(name: "my friend")
