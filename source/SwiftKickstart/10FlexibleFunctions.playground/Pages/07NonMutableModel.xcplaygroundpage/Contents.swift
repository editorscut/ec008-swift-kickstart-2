//: ### Non-Mutable Model
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Model {
  fileprivate let privateArray: [String]
  
  init(_ strings: String...) {
    self.init(privateArray: strings)
  }
}

extension Model : CustomStringConvertible {
  var description: String {
    return privateArray.description
  }
}

extension Model { // Non-Mutating Methods
  private init(privateArray: [String]) {
    self.privateArray = privateArray
  }
  
  func removed(at index: Int) -> Model {
    var mutableArray = privateArray
    mutableArray.remove(at: index)
    return Model(privateArray: mutableArray)
  }
  func inserted(_ string: String,
                at index: Int) -> Model {
    var mutableArray = privateArray
    mutableArray.insert(string, at: index)
    return Model(privateArray: mutableArray)
  }
  func moved(from fromIndex: Int,
             to toIndex: Int) -> Model {
    removed(at: fromIndex)
        .inserted(privateArray[fromIndex], at: toIndex)
  }
}

var model = Model("A", "B", "C", "D", "E")
model.removed(at: 3)
model.inserted("Z", at: 1)
model.moved(from: 0, to: 1)
model.moved(from: 3, to: 2)
model.moved(from: 4, to: 4)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


