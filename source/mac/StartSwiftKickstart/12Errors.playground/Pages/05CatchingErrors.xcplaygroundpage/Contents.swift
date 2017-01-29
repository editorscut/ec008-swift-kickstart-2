//: ### Catching Errors
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct DivideByZeroError: Error {
}

func divide60by(_ divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivideByZeroError()
    }
    return 60 / divisor
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
