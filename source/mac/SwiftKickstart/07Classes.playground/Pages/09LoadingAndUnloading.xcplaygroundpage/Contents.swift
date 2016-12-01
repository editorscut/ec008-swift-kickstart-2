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
    deinit {
        updateLog(with: "Destroy Location")
    }
}

class Attendee {
    let name: String
    lazy var location = Location(city: "San Francisco")
    
    init(name: String) {
        self.name = name
        updateLog(with: "Create Attendee")
    }
    deinit {
        updateLog(with: "Destroy Attendee")
    }
}

var daniel = Attendee(name: "Daniel")
log
daniel.location.city
log
daniel = Attendee(name: "Kimberli")
daniel.location.city
log

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)