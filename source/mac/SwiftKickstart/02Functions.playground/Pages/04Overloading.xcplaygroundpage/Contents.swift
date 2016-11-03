//: ### Overloading
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
func hello() -> String {
    return hello(name: "World")
}

func hello(name: String) -> String {
    return "Hello, \(name)!"
}
hello()
hello(name: "my friend")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
