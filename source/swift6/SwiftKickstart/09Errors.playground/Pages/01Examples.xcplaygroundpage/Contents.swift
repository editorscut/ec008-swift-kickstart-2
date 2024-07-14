//: ### Examples
//: [TOC](00TOC) | Previous | [Next](@next)
//let dictionary = ["one": 1, "two": 2]
//let two = dictionary["two"]
//
//let three = dictionary["three"]

//let array = [0, 1, 2]
//array[2]
//array[7]

extension Forecast {
    static func number(_ index: Int) -> String {
        Forecast()[index]
    }
}

Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)

//: [TOC](00TOC) | Previous | [Next](@next)
