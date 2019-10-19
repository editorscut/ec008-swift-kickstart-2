let numberSold = [17, 29, 11, 15, 32, 21, 27]

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

func combination(runningTotal: USDollar,
                 daysSales: Count) -> USDollar {
    runningTotal + revenueAt199on(daysSales)
}

extension Sequence {
    func combine<Output>(_ initialResult: Output,
                         _ nextPartialResult:(Output, Element) -> Output)
        -> Output {
            var accumulator = initialResult
            for element in self {
                accumulator = nextPartialResult(accumulator, element)
            }
            return accumulator
    }
}

numberSold.combine(USDollar(0), combination)

numberSold.reduce(USDollar(0), combination)


numberSold.reduce(USDollar(0)){
    combination(runningTotal: $0, daysSales: $1)
}


numberSold.reduce(USDollar(0)){
    $0 + revenueAt199on($1)
}

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]


let dailyTotals = dailyNumberSold
    .reduce([String : USDollar]()){(accumulator, entry) in
        var running = accumulator
        running[entry.key] = revenueAt199on(entry.value)
        return running
}

dailyTotals.description

extension Sequence {
    func mapUsingReduce<Output>(_ f: (Element) -> Output) -> [Output] {
        reduce([Output]()){$0 + [f($1)]}
    }
}
numberSold.mapUsingReduce(revenueAt199on).description


func isMoreThan25(_ count: Count) -> Bool {
    count > 25
}

extension Sequence {
    func filterUsingReduce(_ condition: (Element) -> Bool ) -> [Element] {
        reduce([Element]()){condition($1) ? $0 + [$1] : $0 }
    }
}
numberSold.filterUsingReduce(isMoreThan25)
