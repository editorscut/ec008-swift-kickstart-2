func hello(name: String = "World") -> String {
    "Hello, \(name)!"
}

hello()

hello(name: "my friend")

//: I've used hello2 for the version with no external name
//: so you can see both versions

func hello2(_ name: String = "World") -> String {
    "Hello, \(name)!"
}

hello2()

hello2("my friend")

//: I've used hello3 for the version with different internal and
//: external names so you can see both versions

func hello3(to name: String = "World") -> String {
    "Hello, \(name)!"
}

hello3()

hello3(to: "my friend")
