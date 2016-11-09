import UIKit
let viewer = UIImageView()
let image = UIImage(named: "Kickstart.jpg")

//if image != nil {
//    let validImage = image!
//    viewer.image = validImage
//} else {
//    print("There is no image to display")
//}
//viewer.image

//if let validImage = image {
//    viewer.image = validImage
//} else {
//    print("There is no image to display")
//}
//viewer.image

if let image = image {
    viewer.image = image
} else {
    print("There is no image to display")
}
viewer.image
