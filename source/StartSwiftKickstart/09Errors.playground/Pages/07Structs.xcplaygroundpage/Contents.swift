//: ### Structs
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct SubscriptOutOfBoundsError: Error {
}

extension Forecast {
    static func number(_ index: Int) throws -> String {
      if !range.contains(index){
            throw SubscriptOutOfBoundsError()
        }
        return Forecast()[index]
    }
}



func forecastNumber(_ index: Int) -> String {
    do {
        let forecast = try Forecast.number(index)
        return "Success!: forecast number \(index) is \(forecast)"
    }
    catch {
        return  "Error: \(error)"
    }
}

forecastNumber(0)

forecastNumber(20)

forecastNumber(-2)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
