17 * 1.99 * 0.70

let numberSold = 17
let price = USDollar(1.99)
let sellersShare = 0.70

Double(numberSold) * price.value * sellersShare
USDollar(numberSold.asDouble() * price.value * sellersShare)

func revenue(on count: Count,
             at appPrice: USDollar) -> USDollar {
  USDollar(count.asDouble()
            * price.value
            * sellersShare)
}
revenue(on: numberSold,
        at: price)
