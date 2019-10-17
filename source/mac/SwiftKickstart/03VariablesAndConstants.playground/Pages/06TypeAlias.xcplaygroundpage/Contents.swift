//: ### Type Alias
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

/// Used to measure payments in United States dollars
typealias USDollars = Double

/// Number of individual copies sold
typealias Count = Int

/// Function that calculates the USDollars earned on a given count sold
typealias EarningsCalculator = (Count) -> USDollars

func revenue(for numberSold: Count) -> USDollars {
    USDollars(numberSold) * 0.99 * 0.70
}
revenue(for: 10)

func earnings(for numbersSold: Count,
              using calculation: EarningsCalculator) -> USDollars {
    calculation(numbersSold)
}

earnings(for: 10, using: revenue)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

