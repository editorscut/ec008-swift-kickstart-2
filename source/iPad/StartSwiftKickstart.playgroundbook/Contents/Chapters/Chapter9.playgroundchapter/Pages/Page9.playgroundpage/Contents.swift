struct Model <Element> {
    fileprivate let privateArray: [Element]
    
    init(_ elements: Element...) {
        privateArray = elements
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

extension Model where Element: Equatable {
    func removed(_ element: Element) -> Model {
        guard let location = privateArray.index(of: element)
            else {return self}
        return removed(at: location)
    }
}


let model = Model("A", "B", "C", "D", "E")
model.removed("B")
model.removed("Z")

struct Vertex {
    let x, y: Int
}

let vertexModel = Model(Vertex(x: 3, y: 4), Vertex(x: 6, y: 8), Vertex(x: 9, y: 12))
//vertexModel.removed(Vertex(x: 3, y: 4))
vertexModel.removed(at: 1)
