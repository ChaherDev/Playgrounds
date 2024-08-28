import Cocoa

var greeting = "Hello, playground"

// Arrays

var beatles = ["John", "Paul", "George"]

let numbers = [4, 8, 15, 16, 23, 42]

var temperatures = [23.4, 42.5]

print(beatles[0])
print(numbers[4])

// Tu dois être sur que l'index existe

beatles.append("Adrian")

var scores = Array<Int>()

scores.append(100)
scores.append(80)

print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Red")

var movies = [String]()

print(albums.count)

var characters = ["Lena", "Pam", "Yes"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()

print(scores.contains(2))

let beatlesReversed = beatles.reversed()

print(beatlesReversed)
