//: ### Overloading
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
func hello() {
    hello(name: "World")
}
func hello(name: String) {
    print("Hello, \(name)!")
}
hello()
hello(name: "my friend")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
