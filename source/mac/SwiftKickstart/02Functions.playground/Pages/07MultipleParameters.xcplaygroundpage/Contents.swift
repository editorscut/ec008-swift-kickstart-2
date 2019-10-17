//: ### Multiple Parameters
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func hello(name: String,
           city: String) -> String {
    "Hello, \(name) who comes from \(city)!"
}

hello(name: "my friend", city: "London")

//: Here's a version with different external names

func hello2(_ name: String,
            from city: String) -> String {
    "Hello, \(name) who comes from \(city)!"
}

hello2("my friend", from: "London")

//: Here's a version with default values

func hello3(_ name: String = "World",
            from city: String = "Cupertino") -> String {
    "Hello, \(name) who comes from \(city)!"
}

hello3()
hello3("my friend", from: "London")
hello3("my friend")
hello3(from: "London")

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
