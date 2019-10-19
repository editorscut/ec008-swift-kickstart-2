func hello() -> String {
    hello(name: "World")
}

func hello(name: String) -> String {
    "Hello, \(name)!"
}

hello()

hello(name: "my friend")
