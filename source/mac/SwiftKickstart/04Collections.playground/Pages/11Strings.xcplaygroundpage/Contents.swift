//: ### Strings
//: [TOC](00TOC) | [Previous](@previous) | Next

var vowels = "aeiou"

vowels.contains("b")
vowels.contains("e")
vowels.append("y")
vowels.removeLast()
vowels

let title = "Swift Programmer"

func removeVowels(from input: String) -> String {
    var result = ""
    for character in input {
        if !vowels.contains(character) {
            result.append(character)
        }
    }
    return result
}

removeVowels(from: title)

func filterVowels(from input: String) -> String {
    return input.filter{!vowels.contains($0)}
}

filterVowels(from: title)

let firstSpace = title.firstIndex(of: " ") ?? title.endIndex
let firstWord = title[...firstSpace]
let trimmedFirstWord = title[..<firstSpace]
let secondWord = title[firstSpace...]

let altTitle = """
Swift 
Programmer
"""
//: [TOC](00TOC) | [Previous](@previous) | Next


