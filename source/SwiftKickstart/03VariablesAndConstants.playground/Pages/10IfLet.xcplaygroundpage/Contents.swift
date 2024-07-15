//: ### if let
//: [TOC](00TOC) | [Previous](@previous) | Next
import SwiftUI

let fileURL = Bundle
  .main
  .urlForImageResource("Kickstart.jpg")

//func validate(_ url: URL?) -> String {
//  if let url {
//    "Found file at: \(url.path)"
//  } else {
//    "No file found"
//  }
//}

func validate(_ url: URL?) -> String {
  guard let url else { return "No file found"}
  return "Found file at: \(url.path)"
}

validate(fileURL)

//: [TOC](00TOC) | [Previous](@previous) | Next
