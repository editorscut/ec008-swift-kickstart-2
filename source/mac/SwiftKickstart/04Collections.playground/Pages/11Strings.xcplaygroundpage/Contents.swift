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
  input.filter{char in
    !vowels.contains(char)
  }
}

filterVowels(from: title)

let firstSpace = title.index(of: " ") ?? title.endIndex

let firstWord = title[...firstSpace]
let trimmedFirstWord = title[..<firstSpace]
let secondWord = title[firstSpace...]
let result
  = String(firstWord.uppercased()
            + "-"
            + secondWord.reversed())

//: [TOC](00TOC) | [Previous](@previous) | Next


