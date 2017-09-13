struct Model {
    fileprivate var privateArray: [String]
    
    init(_ strings: String...) {
        privateArray = strings
    }
}

extension Model : CustomStringConvertible {
    var description: String {
        return privateArray.description
    }
}

extension Model { // Mutating Methods
    mutating func remove(at index: Int) {
        privateArray.remove(at: index)
    }
    mutating func insert(_ string: String,
                         at index: Int) {
        privateArray.insert(string, at: index)
    }
    mutating func move(from fromIndex: Int,
                       to toIndex: Int) {
        let elementToBeMoved = privateArray[fromIndex]
        remove(at: fromIndex)
        insert(elementToBeMoved, at: toIndex)
    }
}

var model = Model("A", "B", "C", "D", "E")
model.remove(at: 3)
model.insert("Z", at: 1)
model.move(from: 0, to: 1)
model.move(from: 3, to: 2)
model.move(from: 4, to: 4)
