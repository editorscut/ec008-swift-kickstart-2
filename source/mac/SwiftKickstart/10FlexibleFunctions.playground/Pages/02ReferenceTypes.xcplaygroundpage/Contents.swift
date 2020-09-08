//: ### Reference Types
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
class TextField {
  var text = ""
}

var textField = TextField()
textField.text = "Hello"

func replace(_ field: TextField) {
  var field = field
  field = TextField()
  field.text = "Goodbye"
  field.text
}

replace(textField)
textField.text


func modify(_ field: TextField) {
  field.text = "Changed"
}

modify(textField)
textField.text
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
