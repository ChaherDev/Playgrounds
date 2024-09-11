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

