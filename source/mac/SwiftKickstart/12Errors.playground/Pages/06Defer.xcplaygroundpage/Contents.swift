//: ### defer
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

var message = ""

func tryDivide60by(_ divisor: Int) -> Int? {
    defer {
        message += "Attempted to divide 60 by \(divisor)\n\n"
    }
    do {
        let result =  try divide60by(divisor)
        message += "Successfully divided 60 by \(divisor)\n"
        return result
    }
    catch {
        message += "error:  \(error)\n"
    }
    message += "about to return nil\n"
    return nil
}

let by12 = tryDivide60by(12)
let by0 = tryDivide60by(0)

message
print(message)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
