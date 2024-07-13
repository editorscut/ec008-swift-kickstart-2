//: ### Loading and Unloading
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
class Location {
  let city: String
  
  init(city: String) {
    self.city = city
    print("Creating location \(city)")
  }
}

class Attendee {
  let name: String
  var location = Location(city: "San Francisco")
  
  init(name: String) {
    self.name = name
    print("Creating attendee \(name)")
  }
}


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


