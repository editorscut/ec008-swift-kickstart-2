var numbers: [String: Int] = [:]
numbers["one"] = 8
numbers["too"] = 3
numbers["one"] = 1
numbers["two"] = 2
numbers.removeValue(forKey: "too")
numbers.removeValue(forKey: "four")
numbers.count
numbers
