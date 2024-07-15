//: ### Flat Map
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

enum Language: String {
    case c, cplusplus
    case objectivec
    case java, csharp
    case ruby
    case swift
}

let joansLanguages = [Language.ruby, .c, .csharp, .swift]
let davesLanguages = [Language.c, .objectivec, .java]
let marysLanguages = [Language.swift, .objectivec, .java]
let fredsLanguages = [Language.objectivec, .swift]


let dictionary = ["Joan"  : joansLanguages,
                  "Dave"  : davesLanguages,
                  "Mary"  : marysLanguages,
                  "Fred"  : fredsLanguages]

let languageMap = dictionary.map{ (key, langArray) in
    langArray
}

let languageFlatMap = dictionary.flatMap{ (key, langArray) in
    langArray
}

let languages = Array(Set(languageFlatMap))



//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
