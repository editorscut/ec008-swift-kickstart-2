import SwiftUI

let fileURL = Bundle
    .main
    .urlForImageResource("Kickstart.jpg")

//func validate(_ url: URL?) -> String {
//  if url != nil {
//      let validFileURL = fileURL!
//      return "Found file at: \(validFileURL.path)"
//  } else {
//      return "No file found"
//  }
//}

//func validate(_ url: URL?) -> String {
//  if let url = url {
//      return "Found file at: \(url.path)"
//  } else {
//      return "No file found"
//  }
//}

func validate(_ url: URL?) -> String {
  guard let url = url else {return "No file found" }
  return "Found file at: \(url.path)"
}


validate(fileURL)
