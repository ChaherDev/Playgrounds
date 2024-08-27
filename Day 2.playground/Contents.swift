import Cocoa

var greeting = "Hello, playground"

// Booleans

let goodDogs = true

var gameOver = false

print(gameOver)
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Join Strings together

let firstPart = "Hello, "
let secondPart = "world!"
let superGreeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apello \(number) landed on the moon"
