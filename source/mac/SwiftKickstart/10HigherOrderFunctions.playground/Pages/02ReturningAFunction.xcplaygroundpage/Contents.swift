//: ### Returning a Function
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
var sellersShare = 0.70

func revenueGenerator(at pricePerApp: USDollar) -> (Count) -> USDollar {
    func revenue(_ count: Count) -> USDollar {
        return USDollar(count.asDouble() * pricePerApp.value * sellersShare)
    }
    return revenue
}

let revenueAt199on = revenueGenerator(at: USDollar(1.99))

revenueAt199on(17)

revenueGenerator(at: USDollar(2.99))(17)

let shareArray = [sellersShare]

sellersShare = 1.0

shareArray

revenueAt199on(17)

shareArray
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
