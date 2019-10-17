//: ### Create Arrays
//: [TOC](00TOC) | Previous | [Next](@next)
let primes: [Int]
primes = [2, 3, 5, 7]

let primeNames = ["two", "three", "five", "seven"]

func hello(name: String) -> String {
    "Hello, \(name)!"
}

func bonjour(name: String) -> String {
    "Bonjour, \(name)!"
}

let greetings = [hello, bonjour]

primes[2]
primeNames[1]
greetings[0]("World")
//: [TOC](00TOC) | Previous | [Next](@next)


