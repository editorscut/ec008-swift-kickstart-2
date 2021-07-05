class Attendee {
    var name = "Daniel"
    let hometown = "Shaker Heights"
    
    func changeName(to name: String) {
        self.name = name
    }
}

let person1 = Attendee()
let person2 = person1
person1.name
person2.name
person1.name = "Kimberli"
person1.name
person2.name
person2.name = "Maggie"
person1.name
person2.name
person1.changeName(to: "Annabelle")
person1.name
