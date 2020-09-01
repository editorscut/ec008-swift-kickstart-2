//: ### Nil Coalescing Operator
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

var name: String?
name = "Swifty"

if name != nil {
  print(name!)
} else {
  print("name is nil")
}

print(name ?? "name is nil")

let validName = name ?? "name is nil"
print(validName)


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

