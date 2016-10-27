func hello(to name: String = "World", repeat numberOfTimes: Int = 1) {
    for _ in 1 ... numberOfTimes {
        print("Hello, \(name)!")
    }
}
hello()
hello(to: "my friend")
hello(to: "Swifty", repeat: 3)
hello(repeat: 2)