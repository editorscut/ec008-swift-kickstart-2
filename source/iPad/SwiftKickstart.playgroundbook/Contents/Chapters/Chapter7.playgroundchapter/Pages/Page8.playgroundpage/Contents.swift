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
  let streetInformation: StreetInformation?
  let city: String
  let state: String
  
  init(city: String,
       state: String,
       streetInformation: StreetInformation? = nil){
    self.city = city
    self.state = state
    self.streetInformation = streetInformation
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

func optionalChaining(attendee: Attendee) -> Apartment? {
  func optionalChaining(attendee: Attendee) -> Apartment? {
    let info = attendee.address?.streetInformation?.apartment
    return info
  }
}
