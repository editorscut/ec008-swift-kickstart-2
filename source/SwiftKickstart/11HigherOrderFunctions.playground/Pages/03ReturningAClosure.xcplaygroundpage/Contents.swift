//: ### Returning a Closure
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

let sellersShare = 0.70

func revenueGenerator(at pricePerApp: USDollar) -> (Count) -> USDollar {
  { count in
    USDollar(count.asDouble * pricePerApp.value * sellersShare)
  }
}

let revenueAt199on = revenueGenerator(at: USDollar(1.99))

revenueAt199on(17)

revenueGenerator(at: USDollar(2.99))(17)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
