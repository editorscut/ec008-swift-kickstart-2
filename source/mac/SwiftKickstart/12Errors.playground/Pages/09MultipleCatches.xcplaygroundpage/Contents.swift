//: ### Enumerations
//: [TOC](TOC) | [Previous](@previous) | Next

enum InputSizeError: Error {
    case negativeNumberError
    case numberIsTooLargeError(amountOver: Int)
}

extension InputSizeError : CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .negativeNumberError:
            return "Number is less than 0."
        case .numberIsTooLargeError(let excess):
            return "Number is too large by \(excess)."
        }
    }
}

func double(_ input: Int) throws -> Int {
    if input < 0 {
        throw InputSizeError.negativeNumberError
    } else if input > 49 {
        throw InputSizeError.numberIsTooLargeError(amountOver: input - 49)
    } else {
        return input * 2
    }
}


//
//func cautiouslyDouble(_ input: Int) {
//    do {
//        let doubleInput = try double(input)
//        message += "double \(input) = \(doubleInput)\n"
//    }
//    catch {
//        message += "\(error)\n"
//    }
//}

//func cautiouslyDouble(_ input: Int) {
//    do {
//        let doubleInput = try double(input)
//        message += "double \(input) = \(doubleInput)\n"
//    }
//    catch InputSizeError.numberIsTooLargeError(let excess) {
//        message += "We have a problem! "
//                + "\(InputSizeError.numberIsTooLargeError(amountOver: excess))\n"
//    }
//    catch {
//        message += "\(error)\n"
//    }
//}

//func cautiouslyDouble(_ input: Int) {
//    do {
//        let doubleInput = try double(input)
//        message += "Double \(input) = \(doubleInput).\n"
//    }
//    catch InputSizeError.numberIsTooLargeError(let excess) where excess < 10 {
//        message += "You're not off by much! "  +
//        "\(InputSizeError.numberIsTooLargeError(amountOver: excess))\n"
//    }
//    catch InputSizeError.numberIsTooLargeError(let excess) {
//        message += "We have a problem! "
//            + "\(InputSizeError.numberIsTooLargeError(amountOver: excess))\n"
//    }
//    catch {
//        message += "\(error)\n"
//    }
//}

var message = ""

func cautiouslyDouble(_ input: Int) {
    do {
        let doubleInput = try double(input)
        message += "Double \(input) = \(doubleInput).\n"
    }
    catch InputSizeError.numberIsTooLargeError(let excess) where excess < 10 {
        message += "You're not off by much! "  +
        "\(InputSizeError.numberIsTooLargeError(amountOver: excess))\n"
    }
    catch InputSizeError.numberIsTooLargeError(let excess) {
        message += "We have a problem! "
            + "\(InputSizeError.numberIsTooLargeError(amountOver: excess))\n"
    }
    catch InputSizeError.negativeNumberError {
        message += "You can't double a negative number."
    }
    catch {
        message += "\(error)\n"
    }
}


cautiouslyDouble(8)
cautiouslyDouble(-8)
cautiouslyDouble(54)
cautiouslyDouble(80)

message

print(message)
//: [TOC](TOC) | [Previous](@previous) | Next
