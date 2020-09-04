//: ### Enumerate Arrays
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Drip"5]

for index in coffeeDrinks.indices {
  print(index + 1, coffeeDrinks[index])
}

for kindOfDrink in coffeeDrinks {
  print(coffeeDrinks.firstIndex(of: kindOfDrink)! + 1,
        kindOfDrink)
}

for (index, kindOfDrink) in coffeeDrinks.enumerated() {
    print(index + 1, kindOfDrink)
}

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
