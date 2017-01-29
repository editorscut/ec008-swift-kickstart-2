//: ### Catching Errors
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct DivideByZeroError: Error {
    var reason: String
}

extension DivideByZeroError: CustomDebugStringConvertible {
    var debugDescription: String {
        return reason
    }
}

func divide60by(_ divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivideByZeroError(reason: "can't divide 60 by \(divisor)")
    }
    return 60 / divisor
}

var errorMessage = ""

func tryDivide60by(_ divisor: Int) -> Int? {
    do {
        return try divide60by(divisor)
    }
    catch {
        errorMessage = "error:  \(error)"
    }
    return nil
}

let by12 = tryDivide60by(12)
let by0 = tryDivide60by(0)

errorMessage


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
