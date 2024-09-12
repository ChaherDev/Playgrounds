import Cocoa

// How to create and use closure ?

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHelloAgain = { (name: String) -> String in
    "Hi \(name)!"
}

// Il n'y a pas de noms de paramètres pour les closures ou pour les copies de fonction

sayHelloAgain("Taylor")

// Type of functions

// var greetCopy: () -> Void = greetUser

// En gros, les noms de paramètres, ne font pas parti du type de la fonction

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)



let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// On va utiliser une fonction pour personnaliser notre fonction sorted, de sorte que Suzanne soit toujours devant

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// On passe ensuite notre fonction dans notre fonction sorted

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// La puissance des closures, c'est que l'on peut mettre ces deux choses ensemble

let captainFirstTeamWithClosure = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeamWithClosure)

// How to use trailing closures and shorthand syntax

let sorted = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

print(captainFirstTeam)

let realSorted = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

// Other uses of closures

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// Avec map() par exemple on peut transformer un tableau de Int en tableau de String
// Car avec map(), on n'est pas obligé de retourner le même type que l'on reçoit

// Passer des fonctions en paramètres de fonctions

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
