// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let words = ["apple", "cat", "banana", "dog", "grape", "kiwi"]
        print(words)

        let shortenedWords = words.filter {word in 
        return word.count <= 4}

        print(shortenedWords)
    }
}
