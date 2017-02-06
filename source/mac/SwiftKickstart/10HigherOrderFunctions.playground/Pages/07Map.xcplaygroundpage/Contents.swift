//: ### Map
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numberSold = [17, 29, 11, 15, 32, 21, 27]

func apply<Input, Output>(to input: [Input],
                          using f: (Input) -> Output) -> [Output] {
    var output = [Output]()
    for element in input {
        output.append(f(element))
    }
    return output
}


apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70)
}
apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

//extension Array {
//    func apply<Output>(using f: (Element) -> Output) -> [Output] {
//        var output = [Output]()
//        for element in self {
//            output.append(f(element))
//        }
//        return output
//    }
//}

extension Sequence {
    typealias Element = Iterator.Element
    func apply<Output>(using f: (Element) -> Output) -> [Output] {
        var output = [Output]()
        for element in self {
            output.append(f(element))
        }
        return output
    }
}

numberSold.apply{
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

numberSold.map{
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]

dailyNumberSold.map{
    USDollar($0.value.asDouble() * 1.99 * 0.70)
    }.description

import Foundation

let formatter = NumberFormatter()
formatter.maximumFractionDigits = 2
let sales = NSNumber(value: 1.2345)

let niceSales = formatter.string(from: sales)
let dollarSales = niceSales.map{"$" + $0}
dollarSales


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
