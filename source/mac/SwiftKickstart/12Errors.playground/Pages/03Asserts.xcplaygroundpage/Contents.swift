//: ### Asserts
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

//extension Forecast {
//    static func number(_ index: Int) -> String {
//        assert(index >= 0 && index < count, "Out of bounds")
//        return Forecast()[index]
//    }
//}

//extension Forecast {
//    static func number(_ index: Int) -> String {
//        precondition(index >= 0 && index < count, "Out of bounds")
//        return Forecast()[index]
//    }
//}

//extension Forecast {
//    static func number(_ index: Int) -> String {
//        if index < 0 || index >= count {
//            assertionFailure("\(index) is out of bounds. "
//                + "Must be between 0 and \(count).")
//        }
//        return Forecast()[index]
//    }
//}

extension Forecast {
    static func number(_ index: Int) -> String {
        if index < 0 || index >= count {
            preconditionFailure("\(index) is out of bounds. "
                + "Must be between 0 and \(count).")
        }
        return Forecast()[index]
    }
}

Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)



//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
