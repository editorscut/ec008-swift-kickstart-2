//: ### Capture Lists
//: [TOC](00TOC) | [Previous](@previous) | Next

class FirstView: LoggingView {
  var secondView: SecondView?
  
  func presentView() {
    secondView = SecondView(name: "Second View")
    updateLog(with: "Presented: \(secondView?.name ?? "nil")")
    secondView?.dismiss = {[unowned self] in
        updateLog(with: "Presented: \(self.name)")
    }
  }
}

class SecondView: LoggingView {
  var dismiss: (() -> () )?
  
  func returnToFirst() {
      dismiss?()
  }

}

//var first = FirstView(name: "First View # 1")
//first.presentView()
//if let ourSecondView = first.secondView {
//    first = FirstView(name: "First View # 2")
//    ourSecondView.returnToFirst()
//}

var first = FirstView(name: "First View # 1")
first.presentView()
first.secondView?.returnToFirst()
first = FirstView(name: "First View # 2")
log

print(log)

//: [TOC](00TOC) | [Previous](@previous) | Next

