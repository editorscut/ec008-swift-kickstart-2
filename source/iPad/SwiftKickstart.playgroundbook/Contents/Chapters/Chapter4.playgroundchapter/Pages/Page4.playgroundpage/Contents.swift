let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Drip"]

for index in 0 ..< coffeeDrinks.count {
    print(index, coffeeDrinks[index])
}

for kindOfDrink in coffeeDrinks {
    print(coffeeDrinks.index(of: kindOfDrink)! + 1,  kindOfDrink)
}

for (index, kindOfDrink) in coffeeDrinks.enumerated() {
    print(index + 1, kindOfDrink)
}
