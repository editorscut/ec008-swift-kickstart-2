//: ### Capture Lists
//: [TOC](TOC) - [Previous](@previous) - Next

class FirstView : LoggingView {
    
    func secondView() -> SecondView {
        let newView = SecondView(name: "Second View")
        updateLog(with: "Presented: \(newView.name)")
        newView.dismiss = {  //[weak self] in
            updateLog(with: "Presented: \(self.name)")
        }
        return newView
    }
}

class SecondView : LoggingView {
    
    var dismiss: (() -> () )?
    
    func returnToFirst() {
        dismiss?()
    }
}

var first = FirstView(name: "First View # 1")
var second = first.secondView()

first = FirstView(name: "First View # 2")

second.returnToFirst()


log


//: [TOC](TOC) - [Previous](@previous) - Next
