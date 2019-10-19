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

func modify(_ field: TextField) {
    field.text = "Changed"
}

replace(textField)
textField.text
modify(textField)
textField.text
