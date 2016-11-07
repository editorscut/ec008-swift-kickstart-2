//: ### Nil
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
var name: String?
name = "Swifty"
print(name ?? "name is nil")
name = nil
print(name ?? "name is nil")

import UIKit
let image = UIImage(named: "Kickstart.jpg")

let imageView = UIImageView()
//if image != nil {
//    let validImage = image!
//    imageView.image = validImage
//} else {
//    print("There is no image to display")
//}
//imageView.image

//if let validImage = image {
//    imageView.image = validImage
//} else {
//    print("There is no image to display")
//}
//imageView.image

if let image = image {
    imageView.image = image
} else {
    print("There is no image to display")
}
imageView.image

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
