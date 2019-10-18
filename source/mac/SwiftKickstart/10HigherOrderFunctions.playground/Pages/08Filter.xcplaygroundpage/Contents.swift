//: ### Filter
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
let numberSold = [17, 29, 11, 15, 32, 21, 27]

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]

let weekendDays = ["Sat", "Sun"]

extension Sequence {
    func keep(using f: (Element) -> Bool) -> [Element] {
        var output = [Element]()
        for element in self {
            if f(element) {
                output.append(element)
            }
        }
        return output
    }
}

numberSold.keep{
    $0 > 25
}

dailyNumberSold.keep{
    !weekendDays.contains($0.key)
}

let moreThan25 = numberSold.filter{$0 > 25}
moreThan25

let weekdaySales = dailyNumberSold.filter{!weekendDays.contains($0.key)}
weekdaySales

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
    .map{filteredCount in revenueAt199on(filteredCount)}
    .description

numberSold.filter(isMoreThan25)
    .map(revenueAt199on)
    .description
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
