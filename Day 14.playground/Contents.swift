import Cocoa

// How to handle missing data with optionals ?

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

// Shadowing

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    
    // Valid
    
    print(square(number: number))
    
    // Valid
    
}

// How to unwrap optionals with guard ?

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

// How to unwrap optionals with nil coalescing ?

let captains = [
    "Entreprise": "Picard",
    "Voyager": "Janneway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let againNumber = Int(input) ?? 0
print(againNumber)

