let numberSold = [17, 29, 11, 15, 32, 21, 27]

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]

let weekendDays = ["Sat", "Sun"]

extension Sequence {
  func myFilter(using f: (Element) -> Bool)
                                   -> [Element] {
    var output = [Element]()
    for element in self {
      if f(element) {
        output.append(element)
      }
    }
    return output
  }
}

numberSold.myFilter{
    $0 > 25
}

dailyNumberSold.myFilter{
    !weekendDays.contains($0.key)
}

let moreThan25 = numberSold.filter{$0 > 25}
moreThan25

let revenueFromMoreThan25
    = numberSold.filter{$0 > 25}
                .map{USDollar($0.asDouble() * 1.99 * 0.70)}
                .description

revenueFromMoreThan25

func isMoreThan25(_ count: Count) -> Bool {
    count > 25
}

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

numberSold.filter{isMoreThan25($0)}
          .map{revenueAt199on($0)}
          .description

numberSold.filter{count in isMoreThan25(count)}
          .map{numberSold in revenueAt199on(numberSold)}
          .description

numberSold.filter(isMoreThan25)
          .map(revenueAt199on)
          .description
