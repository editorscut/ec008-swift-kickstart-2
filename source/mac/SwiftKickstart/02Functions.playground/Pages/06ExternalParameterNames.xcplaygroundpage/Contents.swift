//: ### External Parameter Names
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
func hello(to name: String = "World") -> String {
    return "Hello, \(name)!"
}
hello()
hello(to: "my friend")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)