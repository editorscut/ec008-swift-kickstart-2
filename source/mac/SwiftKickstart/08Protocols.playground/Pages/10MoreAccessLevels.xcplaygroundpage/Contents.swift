//: ### More Access Levels
//: [TOC](00TOC) | [Previous](@previous) | Next

let daniel = SettableName(name: "Daniel")
daniel.name
daniel.name = "Kimberli"
daniel.name

let maggie = GettableName(name: "Maggie")
maggie.name
// maggie.name = "Kimberli"

//class SettableSubclass : SettableName {
//
//}

extension SettableName {
    func fetchTheName() -> String {
        return name
    }
}

daniel.fetchTheName()

class OpenSubclass : OpenName {
    
}

let annabelle = OpenSubclass(name: "Annabelle")
annabelle.name
annabelle.name = "Kimberli"
annabelle.name
//: [TOC](00TOC) | [Previous](@previous) | Next
