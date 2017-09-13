var odds = Set<Int>()
for i in stride(from: 1, through: 10, by: 2) {
    odds.insert(i)
}

odds.isEmpty
odds.insert(7)
odds.remove(7)

odds.contains(7)
odds.contains(5)

odds.count
odds

var primes: Set = [2, 3, 5, 7, 11]

primes.isSubset(of: odds)
primes.isEmpty
primes.isDisjoint(with: odds)

let union = primes.union(odds)
let intersection = primes.intersection(odds)
let difference = primes.subtracting(odds)
let symmetricDifference = primes.symmetricDifference(odds)

primes
odds

primes.formUnion(odds)

primes
odds

odds = odds.intersection(primes)

for odd in odds {
    print(odd)
}
