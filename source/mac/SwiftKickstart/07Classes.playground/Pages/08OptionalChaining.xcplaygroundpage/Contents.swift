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
typealias Apartment = String

func pyramidOfDoom(attendee: Attendee) -> Apartment? {
    if let validAddress = attendee.address {
        if let validStreetInformation = validAddress.streetInformation {
            return validStreetInformation.apartment
        }
    }
    return nil
}

func flatPyramid(attendee: Attendee) -> Apartment? {
    if let validAddress = attendee.address,
        let validStreetInformation = validAddress.streetInformation {
        return validStreetInformation.apartment
    }
    return nil
}

func flatGuard(attendee: Attendee) -> Apartment? {
    guard let validAddress = attendee.address,
        let validStreetInformation = validAddress.streetInformation else {
            return nil
    }
    return validStreetInformation.apartment
}

func optionalChaining(attendee: Attendee) -> Apartment? {
    let info = attendee.address?.streetInformation?.apartment
    return info
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


