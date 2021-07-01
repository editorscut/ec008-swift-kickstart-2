//: ### Overloading
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello() -> String {
    hello(name: "World")
}
hello()
func hello(name: String) -> String {
    "Hello, \(name)!"
}

hello()

hello(name: "my friend")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
