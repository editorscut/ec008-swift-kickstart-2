//: ### Composition
//: [TOC](00TOC) | [Previous](@previous) | Next
protocol NameBadgeable: CustomStringConvertible {
  func nameBadge() -> String
}
extension NameBadgeable {
  var description: String {
    nameBadge()
  }
}


struct Attendee: NameBadgeable {
  let name: String

  func nameBadge() -> String {
    "Hi, I'm \(name)."
  }
}

//extension Attendee: CustomStringConvertible {
//  var description: String {
//    nameBadge()
//  }
//}

struct TutorialAttendee: NameBadgeable {
  let tutorial: String
  private let attendee: Attendee
  var name: String {
    attendee.name
  }
  
  init(name: String,
       tutorial: String) {
    self.tutorial = tutorial
    attendee = Attendee(name: name)
  }
  
  func nameBadge() -> String {
    attendee.nameBadge()
      + " I'm taking \(tutorial)."
  }
}

//extension TutorialAttendee: CustomStringConvertible {
//  var description: String {
//    nameBadge()
//  }
//}



let daniel = Attendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli",
                                tutorial: "Swiftiness")
//: [TOC](00TOC) | [Previous](@previous) | Next


