func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

func revenueAt299on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 2.99 * 0.70)
}

func calculateRevenue(for count: Count,
                      using f: (Count) -> USDollar)
                                          -> USDollar {
  f(count)
}

calculateRevenue(for: 17,
                 using: revenueAt199on)
calculateRevenue(for: 17,
                 using: { count in
    USDollar(count.asDouble() * 1.99 * 0.70)
})

calculateRevenue(for: 17){count in
    USDollar(count.asDouble() * 1.99 * 0.70)
}

calculateRevenue(for: 17){
    USDollar($0.asDouble() * 1.99 * 0.70)
}

calculateRevenue(for: 17, using: revenueAt199on)
calculateRevenue(for: 17){count in revenueAt199on(count)}
calculateRevenue(for: 17){revenueAt199on($0)}

func apply<Input, Output>(to input: Input,
                          using f: (Input) -> Output)
                                           -> Output {
  f(input)
}

apply(to: 17){
  USDollar($0.asDouble() * 1.99 * 0.70)
}
