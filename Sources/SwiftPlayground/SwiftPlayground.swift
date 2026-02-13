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

        let archive = [
            [
                [["candle", "dust"], ["mirror", "ash"]],
                [["whisper", "shadow"], ["clock", "veil"]]
            ],
            [
                [["stone", "key"], ["relic", "name"]],
                [["cipher", "bone"], ["ember", "seal"]]
            ]
        ]

        // Creates a variable containg the last list in archive.
        if let threeDList = archive.last, let twoDList = threeDList.last, let oneDList = twoDList.last {
            
            // Prints the first item of the last list.
            let cipher = oneDList.first
            print(cipher)
        }

        let sightings = [
            (name: "moth", score: 3),
            (name: "wolf", score: 9),
            (name: "raven", score: 4),
            (name: "mist", score: 7),
            (name: "wisp", score: 2)
        ]

        let filteredSightings = sightings.filter {}
        
    }
}
