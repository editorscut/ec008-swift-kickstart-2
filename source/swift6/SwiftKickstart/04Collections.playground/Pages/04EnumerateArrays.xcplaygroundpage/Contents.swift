//: ### Enumerate Arrays
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Drip"]

for index in coffeeDrinks.indices {
  print(index + 1, coffeeDrinks[index])
}

print("\n\n")

for kindOfDrink in coffeeDrinks {
  print(coffeeDrinks.firstIndex(of: kindOfDrink)! + 1, kindOfDrink)
}

print("\n\n")

for (index, kindOfDrink) in coffeeDrinks.enumerated() {
  print(index + 1, kindOfDrink)
}

func printDrink(_ drink: String) {
  print(drink)
}

coffeeDrinks.forEach(printDrink)

coffeeDrinks.forEach {drink in
  print(drink)
}

func printIndexAndDrink(_ index: Int, _ drink: String) {
  print(index + 1, drink)
}

coffeeDrinks.enumerated().forEach(printIndexAndDrink)

coffeeDrinks.enumerated().forEach { (index, drink) in
  print(index + 1, drink)
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
