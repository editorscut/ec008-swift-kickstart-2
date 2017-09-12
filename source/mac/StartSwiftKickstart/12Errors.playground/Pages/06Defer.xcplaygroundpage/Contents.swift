//: ### Defer
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct SubscriptOutOfBoundsError: Error {
}

extension Forecast {
    static func number(_ index: Int) throws -> String {
        if index < 0 || index >= Forecast.count {
            throw SubscriptOutOfBoundsError()
        }
        return Forecast()[index]
    }
}

var status = ""

func forecastNumber(_ index: Int) -> String {
    status += "\nBegin for index = \(index)\n"
    do {
        let forecast = try Forecast.number(index)
        status += "Success\n"
        return "Success!: forecast number \(index) is \(forecast)"
    }
    catch {
        status += "Error\n"
        return "Error: \(error)"
    }
}



forecastNumber(0)

forecastNumber(20)

forecastNumber(-2)


status
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
