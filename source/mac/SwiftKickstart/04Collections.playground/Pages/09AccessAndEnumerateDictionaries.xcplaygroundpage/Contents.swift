//: ### Access and Enumerate Dictionaries
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let numbers = ["one":1, "two":2, "three":3]

let two = numbers["two"]


if numbers.keys.contains("one") {
    let one = numbers["one"]!
    print(one)
}

for key in numbers.keys {
    print(key, ":", numbers[key]!)
}

for value in numbers.values {
    print(value)
}

for number in numbers {
    print(number.0, ":", number.1)
}

for (key, value) in numbers {
    print(key, ":", value)
}

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


