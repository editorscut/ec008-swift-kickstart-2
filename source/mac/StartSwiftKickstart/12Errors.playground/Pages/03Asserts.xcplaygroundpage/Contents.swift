//: ### Asserts
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

extension Forecast {
    static func number(_ index: Int) -> String? {
        if case 0 ..< count = index {
            return Forecast()[index]
        } else {
            return nil
        }
    }
}

Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)



//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
