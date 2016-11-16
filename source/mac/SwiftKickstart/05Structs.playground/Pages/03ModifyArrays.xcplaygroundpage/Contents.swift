//: ### Modify Arrays
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
var evens = [4, 10, 16]
evens[1] = 2
evens.append(8)
evens += [12, 6, 10]
evens.insert(14, at: 1)
evens[1 ... 5] = [100, 200]
evens[2 ... 2] = [22, 20, 18]
evens.removeLast()
evens.removeFirst(2)
evens.remove(at: 2)
evens.removeAll(keepingCapacity: true)
if !evens.isEmpty{
    evens.removeLast()
}

evens
evens.count

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
