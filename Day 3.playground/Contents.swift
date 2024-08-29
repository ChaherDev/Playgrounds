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

// Dictionaries

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janiero",
    2021: "Tokyo",
    2024: "Paris"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()

heights["Yao Ming"] = 229
heights["LeBron James"] = 206

// On ne peut pas avoir deux valeurs pour une même clé
// Si on essaie d'attribuer deux valeurs différentes à une même clé,
// Swift va simplement remplacer l'ancienne valeur par la nouvelle.

// Sets

let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print(actors)

var newActors = Set<String>()
newActors.insert("Denzel Washington")
newActors.insert("Tom Cruise")
newActors.insert("Nicolas Cage")
newActors.insert("Samuel L Jackson")

print(newActors)

// Enumerations

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.thursday

enum Mounths {
    case january, february
}

var mounth = Mounths.february
mounth = .january

