// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let mixed = ["cat", "7", "owl", "15", "dog", "3"]

        // Creates a list containing the numbers from mixed converted to integers.
        let numbers = mixed.compactMap {Int($0)}
        print(numbers)
        
        /// Checks if all the items are integers by converting them to an integer and checking if it returned nil.
        /// If it returned nil it means the item was a string, and if it doesn't it means it was an integer.
        let areAllNumbers = mixed.allSatisfy {Int($0) != nil}

        // If mixed is all numbers prints a message (this will never trigger).
        if areAllNumbers {
            print("Yeehaw, I love numbers!")
        }

        let sightings = [
            (name: "moth", score: 3),
            (name: "wolf", score: 9),
            (name: "raven", score: 4),
            (name: "mist", score: 7),
            (name: "wisp", score: 2)
        ]

        // Removes any which do not begin with m or w.
        let filteredSightings = sightings.filter {
            $0.0.first == "m" || $0.0.first == "w"
        }
        
        // Creates a list containing only the scores from filteredSightings.
        let sightingScores = filteredSightings.map {
            $0.score
        }

        // Totals the scores for every creature.
        let addedScores = sightingScores.reduce(0) {
            return $0 + $1
        }
        print(addedScores)

        // Prints out the lowest and highest score in sightingScores.
        if let highestScore = sightingScores.max {$0 < $1}, let lowestScore = sightingScores.min {$0 < $1} {
            print(highestScore)
            print(lowestScore)
        }

    }
}