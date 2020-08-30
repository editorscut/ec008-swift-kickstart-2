//: ### Multiple Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello(_ name: String = "World",
           from city: String = "Cupertino") -> String {
    "Hello, \(name) from \(city)!"
}
hello()
hello("my friend", from: "London")
hello("my friend")
hello(from: "London")

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
