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

//: map and flatmap for arrays

let languageMap = dictionary.map{ (key, langArray) in
    langArray
}

let languageFlatMap = dictionary.flatMap{ (key, langArray) in
    langArray
}


let languages = Array(Set(languageFlatMap))

//: map and flatmap for optionals
let firstLanguageMap = dictionary["Joan"].map{$0.first}
firstLanguageMap
let firstLanguageFlatMap = dictionary["Joan"].flatMap{$0.first}
firstLanguageFlatMap



//: Using flatMap

let team = ["Joan", "Mike", "Dave", "Anna"]

let languagesForTeamMap = team.map{dictionary[$0]}
languagesForTeamMap

let languagesForTeamFlatMap = team.flatMap{dictionary[$0]}
languagesForTeamFlatMap


let languagesDoubleFlatMap = team.flatMap{dictionary[$0]}.flatMap{$0}
languagesDoubleFlatMap
