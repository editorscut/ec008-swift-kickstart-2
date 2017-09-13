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

//if let image = image {
//    viewer.image = image
//} else {
//    print("There is no image to display")
//}

//func display(image: UIImage?) {
//    if let image = image {
//        viewer.image = image
//    } else {
//        print("There is no image to display")
//    }
//}
func display(image: UIImage?) {
    guard let image = image else {
        print("There is no image to display")
        return
    }
    viewer.image = image
}
display(image: image)
viewer.image
