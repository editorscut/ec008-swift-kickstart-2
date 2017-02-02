//: ### Throwing Errors
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

extension Forecast {
    static func number(_ index: Int) -> String {
        if index < 0 || index >= count {
            preconditionFailure("\(index) is out of bounds. "
                + "Must be between 0 and \(count).")
        }
        return Forecast()[index]
    }
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
