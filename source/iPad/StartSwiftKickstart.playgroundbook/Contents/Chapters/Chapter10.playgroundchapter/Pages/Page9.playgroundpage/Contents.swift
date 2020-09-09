struct Model <Element> {
    fileprivate let privateArray: [Element]
    
    init(_ elements: Element...) {
      self.init(privateArray: elements)
    }
}

extension Model : CustomStringConvertible {
    var description: String {
        return privateArray.description
    }
}

extension Model { // Non-Mutating Methods
    private init(privateArray: [Element]) {
        self.privateArray = privateArray
    }
    
    func removed(at index: Int) -> Model {
        var mutableArray = privateArray
        mutableArray.remove(at: index)
        return Model(privateArray: mutableArray)
    }
    func inserted(_ element: Element,
                  at index: Int) -> Model {
        var mutableArray = privateArray
        mutableArray.insert(element, at: index)
        return Model(privateArray: mutableArray)
    }
    func moved(from fromIndex: Int,
               to toIndex: Int) -> Model {
        return removed(at: fromIndex)
            .inserted(privateArray[fromIndex], at: toIndex)
    }
}


let model = Model("A", "B", "C", "D", "E")
model.removed(at: 3)
model.inserted("Z", at: 1)
model.moved(from: 0, to: 1)
model.moved(from: 3, to: 2)
model.moved(from: 4, to: 4)

let intModel = Model(1, 2, 3)
intModel.moved(from: 1, to: 2)
