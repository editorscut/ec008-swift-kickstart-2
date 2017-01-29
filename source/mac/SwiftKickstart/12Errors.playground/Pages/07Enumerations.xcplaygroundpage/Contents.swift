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

//: [TOC](TOC) | [Previous](@previous) | Next
