//: ### Strings
//: [TOC](00TOC) | [Previous](@previous) | Next
var vowels = "aeiou"
vowels.contains("b")
vowels.contains("e")
vowels.append("y")
vowels.removeLast()
vowels

let title = "Swift Programmer"

func remove(_ toBeRemoved: String,
            from input: String) -> String {
  var result = ""
  for character in input {
    if !toBeRemoved.contains(character) {
      result.append(character)
    }
  }
  return result
}

remove(vowels, from: title)

func filter(_ toBeRemoved: String,
            from input: String) -> String {
  input.filter {char in
    !toBeRemoved.contains(char)}
}
filter(vowels, from: title)

let firstSpace = title.firstIndex(of: " ") ?? title.endIndex
let firstWord = title[..<firstSpace]
let secondWord = title[firstSpace...]

let result = String(firstWord.uppercased())
+ "-"
+ String(secondWord.reversed())

//: [TOC](00TOC) | [Previous](@previous) | Next


