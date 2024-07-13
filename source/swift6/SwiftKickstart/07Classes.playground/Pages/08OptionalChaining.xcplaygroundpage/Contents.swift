//: ### Optional Chaining
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
class StreetInformation {
  let number: String?
  let name: String?
  let apartment: String?
  
  init(number: String? = nil,
       name: String? = nil,
       apartment: String? = nil){
    self.number = number
    self.name = name
    self.apartment = apartment
  }
}

class Address {
  let streetInfo: StreetInformation?
  let city: String
  let state: String
  
  init(city: String,
       state: String,
       streetInfo: StreetInformation? = nil){
    self.city = city
    self.state = state
    self.streetInfo = streetInfo
  }
}

class Attendee {
  let name: String
  let address: Address?
  
  init(name: String, address: Address? = nil) {
    self.name = name
    self.address = address
  }
}

typealias Apartment = String

func pyramidOfDoom(attendee: Attendee) -> Apartment? {
  if let validAddress = attendee.address {
    if let validStreetInfo = validAddress.streetInfo {
        return validStreetInfo.apartment
    }
  }
  return nil
}

func flatPyramid(attendee: Attendee) -> Apartment? {
  if let validAddress = attendee.address,
    let validStreetInfo = validAddress.streetInfo {
      return validStreetInfo.apartment
  }
  return nil
}

func flatGuard(attendee: Attendee) -> Apartment? {
  guard let validAddress = attendee.address,
    let validStreetInfo = validAddress.streetInfo else {
      return nil
  }
  return validStreetInfo.apartment
}

func optionalChaining(attendee: Attendee) -> Apartment? {
  attendee.address?.streetInfo?.apartment
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


