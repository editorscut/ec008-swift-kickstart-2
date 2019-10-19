//extension Forecast {
//    static func number(_ index: Int) -> String {
//        Forecast()[index]
//    }
//}


//extension Forecast {
//    static func number(_ index: Int) -> String? {
//        if index >= 0 && index < count {
//            return Forecast()[index]
//        } else {
//            return nil
//        }
//    }
//}

//extension Forecast {
//    static func number(_ index: Int) -> String? {
//        guard index >= 0 && index < count else { return nil }
//        return Forecast()[index]
//    }
//}

//extension Forecast {
//    static func number(_ index: Int) -> String? {
//        switch index {
//        case 0 ..< count:
//            return Forecast()[index]
//        default:
//            return nil
//        }
//    }
//}

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
Forecast.number(-2)
Forecast.number(20)
