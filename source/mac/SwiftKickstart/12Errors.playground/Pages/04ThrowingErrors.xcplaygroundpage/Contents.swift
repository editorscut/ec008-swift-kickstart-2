//: ### Throwing Errors
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)



//func divide60by(_ divisor: Int) -> Int {
//    return 60 / divisor
//}
//
//divide60by(12)
//divide60by(13)
//divide60by(0)


struct DivideByZeroError: Error {
}

func divide60by(_ divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivideByZeroError()
    }
    return 60 / divisor
}

let by12 = try? divide60by(12)
let by0 = try? divide60by(0)

func rethrowsExample(value: Int,  using f: (Int) throws -> Int) rethrows -> Int? {
    return try f(value)
}

try? rethrowsExample(value: 12, using: divide60by)
try? rethrowsExample(value: 0, using: divide60by)





//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
