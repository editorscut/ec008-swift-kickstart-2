func revenueGenerator(at pricePerApp: USDollar) -> (Count) -> USDollar {
    func revenue(_ count: Count) -> USDollar {
        return USDollar(count.asDouble() * pricePerApp.value * 0.70)
    }
    return revenue
}

let revenueAt199on = revenueGenerator(at: USDollar(1.99))

revenueAt199on(17)

revenueGenerator(at: USDollar(2.99))(17)
