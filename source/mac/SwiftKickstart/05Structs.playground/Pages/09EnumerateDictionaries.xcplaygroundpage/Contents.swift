//: ### Enumerate Dictionaries
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numbers = ["one":1, "two":2, "three":3]

let numbersKeys = numbers.keys

for key in numbersKeys {
    print(key, ":", numbers[key]!)
}

let numbersValues = numbers.values

for value in numbersValues {
    print(value)
}

for number in numbers {
    print(number.0, ":", number.1)
}

for (key, value) in numbers {
    print(key, ":", value)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
