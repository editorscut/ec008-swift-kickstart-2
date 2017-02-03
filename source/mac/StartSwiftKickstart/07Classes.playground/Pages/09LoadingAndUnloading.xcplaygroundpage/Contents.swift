//: ### Loading and Unloading
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
var log = ""
var count = 1

func updateLog(with status: String) {
    log += "(\(count)) " + status + "\n"
    count += 1
}

class Location {
    let city: String
    
    init(city: String) {
        self.city = city
        updateLog(with: "Create Location")
    }
}

class Attendee {
    let name: String
    var location = Location(city: "San Francisco")
    
    init(name: String) {
        self.name = name
        updateLog(with: "Create Attendee")
    }
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
