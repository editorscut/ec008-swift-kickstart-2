var sellersShare = 0.70

func revenueGenerator(at pricePerApp: USDollar)
                         -> (Count) -> USDollar {
  func revenue(_ count: Count) -> USDollar {
      USDollar(count.asDouble()
                * pricePerApp.value
                * sellersShare)
  }
  return revenue
}

let revenueAt199on = revenueGenerator(at: USDollar(1.99))

revenueAt199on(17)
let shareArray = [sellersShare]

sellersShare = 0.85

shareArray
revenueAt199on(17)
