var x = 7
var y = x
x = 5
x
y

let xField = TextField()
xField.text = "x"

let yField = xField
yField.text = "y"

xField.text
yField.text

var xNumbers = [0, 1, 2, 3]
var yNumbers = xNumbers
xNumbers[0] = 100

xNumbers
yNumbers

var xFields = [xField, yField]
var yFields = xFields

var zField = TextField()
zField.text = "z"
yFields[0] = zField

xFields[0].text
yFields[0].text
yFields[1].text = "Changed"
xFields[1].text
yFields[1].text
