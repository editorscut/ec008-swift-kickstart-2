let numberSold = [17, 29, 11, 15, 32, 21, 27]

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]
func combine(runningTotal: USDollar,
                 daysSales: Count) -> USDollar {
    runningTotal + revenueAt199on(daysSales)
}

extension Sequence {
  func myReduce<Output>(_ initial: Output,
                        _ combine:(Output, Element) -> Output)
                                                    -> Output {
    var accumulator = initial
    for element in self {
      accumulator = combine(accumulator, element)
    }
    return accumulator
  }
}
numberSold.myReduce(USDollar(0), combine)

numberSold.reduce(USDollar(0), combine)


numberSold.reduce(USDollar(0)){
    combine(runningTotal: $0, daysSales: $1)
}

numberSold.reduce(USDollar(0)){
    $0 + revenueAt199on($1)
}

let dailyTotals = dailyNumberSold
                 .reduce([String : USDollar]()){
                  (accumulator, entry) in
    var running = accumulator
    running[entry.key] = revenueAt199on(entry.value)
    return running
}

dailyTotals.description

extension Sequence {
    func mapUsingReduce<Output>(_ f: (Element) -> Output)
                                               -> [Output] {
        reduce([Output]()){$0 + [f($1)]}
    }
}

numberSold.mapUsingReduce(revenueAt199on).description

extension Sequence {
    func filterUsingReduce(_ condition: (Element) -> Bool )
                                                  -> [Element] {
        reduce([Element]()){condition($1) ? $0 + [$1] : $0 }
    }
}

numberSold.filterUsingReduce{item in item > 25}
