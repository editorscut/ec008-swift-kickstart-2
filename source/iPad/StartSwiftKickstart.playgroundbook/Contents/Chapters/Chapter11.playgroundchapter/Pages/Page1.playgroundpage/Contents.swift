import GameplayKit


//: Random Distribution


let random = GKRandomDistribution(lowestValue: 1, highestValue: 5)


for _ in 1 ... 10 {
    random.nextInt()
}

func randomSample(using distribution: GKRandomDistribution) -> [Int] {
    var tally = Array(repeating: 0, count: 5)
    
    for _ in 1 ... 1001 {
        let randomNumber = distribution.nextInt()
        tally[randomNumber - 1] += 1
    }
    return tally
}




randomSample(using: random)


//: Gaussian Distribution

let gaussian = GKGaussianDistribution(lowestValue: 1, highestValue: 5)


randomSample(using: gaussian)

//: Shuffled Distribution

let shuffled = GKShuffledDistribution(lowestValue: 1, highestValue: 5)

randomSample(using: shuffled)
