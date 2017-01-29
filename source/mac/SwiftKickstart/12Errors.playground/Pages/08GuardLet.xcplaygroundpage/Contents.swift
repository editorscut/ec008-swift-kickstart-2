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

var result = 0
var message = ""

func guardedlyDouble(_ input: Int) {
    guard let myResult = try? double(input), input < 10 else {
        message += "can't double \(input)\n"
        return
    }
    message += "double \(input) is \(myResult)\n"
    result = myResult
}

guardedlyDouble(6)
guardedlyDouble(-5)
guardedlyDouble(100)
guardedlyDouble(17)


message

print(message)
//: [TOC](TOC) | [Previous](@previous) | Next
