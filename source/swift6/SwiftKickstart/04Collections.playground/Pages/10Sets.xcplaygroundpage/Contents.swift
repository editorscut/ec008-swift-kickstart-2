//: ### Sets
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
var odds = Set<Int>()
for i in stride(from: 1,
                through: 10,
                by: 2) {
  odds.insert(i)
}

odds.insert(7)
odds.insert(11)
odds.remove(7)

odds.isEmpty
odds.contains(7)
odds.contains(5)

odds.count
odds

var primes: Set = [2, 3, 5, 7, 11]

primes.isSubset(of: odds)
primes.isDisjoint(with: odds)

let union  = primes.union(odds)
let intersection = primes.intersection(odds)
let difference = primes.subtracting(odds)
let symmetricDifference = primes.symmetricDifference(odds)
for odd in odds {
  print(odd)
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


