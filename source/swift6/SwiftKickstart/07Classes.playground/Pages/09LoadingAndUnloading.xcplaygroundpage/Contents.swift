//: ### Loading and Unloading
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
class Location {
  let city: String
  
  init(city: String) {
    self.city = city
    print("Creating location \(city)")
  }
  deinit {
    print("Destroying Location \(city)")
  }
}

class Attendee {
  let name: String
  lazy var location = Location(city: "San Francisco")
  
  init(name: String) {
    self.name = name
    print("Creating attendee \(name)")
  }
  deinit {
    print("Destroying Attendee \(name)")
  }
}

var daniel = Attendee(name: "Daniel")
print("==================")
daniel.location.city
daniel = Attendee(name: "Kimberli")


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


