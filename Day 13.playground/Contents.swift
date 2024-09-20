import Cocoa

// How to create and use protocols ?

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunrof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)

// How to use opaque return types ?

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

// How to create and use extensions ?

var quote = "     The truth is rarely pure and never simple     "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var newQuote = "     The truth is rarely pure and never simple     "
let newTrimmed = newQuote.trimmed()

newQuote.trim()

// ed et ing quand on crée une méthode qui agit dans une nouvelle variables et non pas dans l'élément en lui même

let lyrics = """
fewikfre
frefergg
refggerf
"""

print(lyrics.lines.count)

// Un cas pratique de l’utilité des extensions est lorsque nous voulons
// à la fois créer notre propre initialisateur tout en ayant
// l’initialisateur par défaut des structures disponible.
// Dans ce cas, on crée notre initialisateur dans une extension de notre structure.

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 4, readingHours: 24)

// How to create and use protocol extensions ?
// Protocol Oriented Programming

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

// Cette extention est utilisée dans beaucoup de projets

let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
