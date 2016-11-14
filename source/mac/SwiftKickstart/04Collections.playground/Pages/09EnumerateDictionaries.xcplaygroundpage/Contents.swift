//: ### Enumerate Dictionaries
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numbers = ["one":1, "two":2, "three":3]

let numbersKeys = numbers.keys
let numbersValues = numbers.values

for key in numbersKeys {
    print(key, ":", numbers[key]!)
}

for value in numbersValues {
    print(value)
}

for number in numbers {
    print(number)
    number
}

for (key, value) in numbers {
    print(key, ":", value)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
