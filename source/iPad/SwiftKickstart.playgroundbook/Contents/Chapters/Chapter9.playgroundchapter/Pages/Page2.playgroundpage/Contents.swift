import UIKit

var textField = UITextField()
textField.text = "Hello"

func replace(_ field: UITextField) {
    var field = field
    field = UITextField()
    field.text = "Goodbye"
    field.text
}

func modify(_ field: UITextField) {
    field.text = "Changed"
}

replace(textField)
textField.text
modify(textField)
textField.text
