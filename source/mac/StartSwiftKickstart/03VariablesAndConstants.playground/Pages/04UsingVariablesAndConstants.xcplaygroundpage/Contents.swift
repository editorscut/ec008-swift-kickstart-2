//: ### Using Variables and Constants
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

func hello(_ people: String...) -> (count: Int,
                                    greeting: String) {
        (people.count, people.reduce(""){
            $0 + "\nHello, " + $1 + "!"
        })
}

hello("Thing One", "Thing Two")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

