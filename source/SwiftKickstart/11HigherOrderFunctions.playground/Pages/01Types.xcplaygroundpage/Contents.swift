//: ### Types
//: [TOC](00TOC) | Previous | [Next](@next)

17 * 1.99 * 0.70

let numberSold = 17
let price = USDollar(1.99)
let sellersShare = 0.70

USDollar(numberSold.asDouble * price.value * sellersShare)

func revenue(on count: Count) -> USDollar {
  USDollar(count.asDouble
           * price.value
           * sellersShare)
}


revenue(on: numberSold)

func revenue(on count: Count,
             at appPrice: USDollar) -> USDollar {
  USDollar(count.asDouble
            * price.value
            * sellersShare)
}

revenue(on: numberSold,
        at: price)

//: [TOC](00TOC) | Previous | [Next](@next)

