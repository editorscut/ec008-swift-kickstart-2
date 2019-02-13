//: ### Enumerate Arrays
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Drip"]

print("For loop\n")

for index in 0 ..< coffeeDrinks.count {
    print(index, coffeeDrinks[index])
}

print("\n Fast Enumeration\n")

for kindOfDrink in coffeeDrinks {
    print(coffeeDrinks.firstIndex(of: kindOfDrink)! + 1,  kindOfDrink)
}

print("\n Using Enumerated\n")

for (index, kindOfDrink) in coffeeDrinks.enumerated() {
    print(index + 1, kindOfDrink)
}

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


