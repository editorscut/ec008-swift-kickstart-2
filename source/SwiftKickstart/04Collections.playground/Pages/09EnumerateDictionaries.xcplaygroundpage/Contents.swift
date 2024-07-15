//: ### Access and Enumerate Dictionaries
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let numbers = ["one":1, "two":2, "three":3]

for key in numbers.keys {
  print(key, ":", numbers[key]!)
}

for value in numbers.values {
  print(value)
}

for number in numbers {
  print(number.key, ":", number.value)
}

for (key, value) in numbers {
  print(key, ":", value)
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


