// Closures programming task.


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

        /// Checks if a given string meets a certain parameter.
        /// 
        /// input - The string which is being evaluated.
        /// isValid - The function containing the conditions for input.
        func accepts(input: String, isValid: (String) -> Bool) -> Bool {
            return isValid(input)
        }

        let sample = "moonlight"

        /// If the input is all lowercase and more than 8 characters it is valid, and
        /// the function prints a message. Otherwise does nothing.
        if accepts(input: sample, isValid: {$0.count > 8 && $0.lowercased() == $0}) {
            print("'\(sample)' is valid.")
        }


        let archive = [
            [
                [["candle", "dust"], ["mirror", "ash"]],
                [["whisper", "shadow"], ["clock", "veil"]]
            ],
            [
                [["stone", "key"], ["relic", "name"]],
                [["cipher", "bone"], ["ember", "seal"]]
            ],
            [
                [["feather", "ink"], ["glow", "eclipse"]],
                [["riddle", "echo"], ["ember", "glyph"]]
            ]
        ]

        /// Creates a variable containing the last wing (3d layer) which contains
        /// a word starting with the letter "e".
        let wing = archive.last {$0.contains {
            $0.contains {
                $0.contains {
                    $0.first == "e"}
            }
        }
        }

        // Unwraps wing.
        if let wing {
            
            /// Creates a variable containing the last room (2d layer) which
            /// contains a 4 letter word.
            let room = wing.last {$0.contains {
                $0.contains {$0.count == 4}
            }
            }

            // Unwraps room.
            if let room {
                
                /// Creates a variable containing the last shelf (1d array) which
                /// contains a word starting with "e".
                let shelf = room.last {$0.contains {$0.first == "e"}}
                
                // Unwraps shelf.
                if let shelf {
                    
                    /// Creates a variable containing the first word in shelf that starts
                    /// with the letter "e".
                    let word = shelf.first {$0.first == "e"}
                    print(word)
                }
            }
        }
    }
}