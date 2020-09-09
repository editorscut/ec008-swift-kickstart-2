//let dictionary = ["one": 1, "two": 2]
//let two = dictionary["two"]
//let three = dictionary["three"]

//let array = [0, 1, 2]
//array[2]
//array[7]

//import Foundation
//
//
//setUp()
//
//let url = URL(string: "http://editorscut.c/")
//
//
//let task = URLSession
//          .shared
//          .dataTask(with: url!) { (data, response, error) in
//    print("response", response ?? "no response")
//    print(error ?? "no error")
//    shutDown()
//}
//
//task.resume()

extension Forecast {
    static func number(_ index: Int) -> String {
        Forecast()[index]
    }
}

Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)

