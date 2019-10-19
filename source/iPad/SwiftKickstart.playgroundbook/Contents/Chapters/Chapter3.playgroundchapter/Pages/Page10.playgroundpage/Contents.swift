import SwiftUI

let fileURL = Bundle
    .main
    .urlForImageResource("Kickstart.jpg")

//if fileURL != nil {
//    let validFileURL = fileURL!
//    print("Found file at: ", validFileURL.path)
//} else {
//    print("No file found")
//}

//if let validFileURL = fileURL {
//    print("Found file at: ", validFileURL.path)
//} else {
//    print("No file found")
//}

//if let fileURL = fileURL {
//    print("Found file at: ", fileURL.path)
//} else {
//    print("No file found")
//}

//func validate(url: URL?) {
//    guard let url = url else {     print("No file found")
//        return
//    }
//    print("Found file at: ", url.path)
//}
//
//validate(url: fileURL)

func validate(url: URL?) -> String {
    guard let url = url else {     return "No file found"
    }
    return "Found file at: \(url.path)"
}

validate(url: fileURL)
