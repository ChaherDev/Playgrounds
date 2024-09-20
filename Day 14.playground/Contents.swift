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
