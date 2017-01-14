//: ### Returning a Closure
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func revenueGenerator(at pricePerApp: USDollar) -> (Count) -> USDollar {
    return { count in
        USDollar(count.asDouble() * pricePerApp.value * 0.70)
    }
}

let revenueAt199on = revenueGenerator(at: USDollar(1.99))

revenueAt199on(17)

revenueGenerator(at: USDollar(2.99))(17)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)