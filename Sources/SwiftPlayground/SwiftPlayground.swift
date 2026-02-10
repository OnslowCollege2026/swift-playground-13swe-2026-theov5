// The Swift Programming Language
// https://docs.swift.org/swift-book

let passingGrade = 50

@main
struct SwiftPlayground {
    static func main() {
        
        var numbers = [1, 2, 3, 4, 5]
        // Creates a list containing cubed numbers.
        let cubedNumbers = numbers.map { number in
            return number * number * number
        }
        
        print(cubedNumbers)
        
        let words = ["apple", "cat", "banana", "dog", "grape", "kiwi", "strawberry"]
        print(words)

        // Removes any words which are less than 5 characters.
        let lengthenedWords = words.filter {word in 
        return word.count >= 4}

        print(lengthenedWords)

        numbers = [7, 14, 21, 28, 35]
        print(numbers)

        // Creates a new list containing all the numbers added together.
        let addedNumbers = numbers.reduce(0) {result, number in
        return result + number}
        
        print(addedNumbers)

        // Returns the longest word in lengthened words.
        let longestWord = lengthenedWords.reduce("") {result, word in
        
        // If the result is longer than the current word returns result.
        if result.count > word.count {
            return result
        }
        // If not returns word.
        return word
        }

        print (longestWord)


        let scores = [45, 78, 89, 32, 50, 92, 67, 41, 99, 56]

        let averageScore = scores.map{
            return $0 + 5
        }.filter{
            return $0 >= passingGrade
        }.reduce
    }
}
