import Cocoa

var greeting = "Hello, playground"

// Default Values

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 7)

var characters = ["Lana", "Pam", "Ray", "Sterling"]

print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// Handle errors in functions

// Step 1

enum PasswordError: Error {
    case short, obvious
}

// Step 2

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Step 3

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my language")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
