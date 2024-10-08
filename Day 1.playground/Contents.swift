import Cocoa

var greeting = "Hello, playground"

var name = "Ted"
name = "Robecca"
name = "Keeley"

let character = "Daphne"

// We can't change the value of character

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// For variables, we use camelCase (convention)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOgLife = "How many roads must a man walk down?"

// Strings

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "The he tapped a sign saying \"Believe\" and walked away"

// Multiline Strings

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

print(result.uppercased())

print(movie.hasPrefix("A day"))

print(filename.hasSuffix("jpg"))

// Integers

let score = 10

let reallyBig = 100000000

let reallyreallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squareScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// Doubles

let newNumber = 0.1 + 0.2
print(newNumber)

let a = 1
let b = 2.0

// we can't do let c = a + b

let c = a + Int(b)
let d = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var rating = 5.0
rating *= 2
