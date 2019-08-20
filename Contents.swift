import UIKit

var str = "Hello, playground"

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

extension Animal: Equatable {
    static func == (lhs: Animal, rhs: Animal) -> Bool {
        return lhs.name == rhs.name
    }
}

let dog1 = Animal(name: "dog")
let dog2 = dog1
let dog3 = Animal(name: "dog")
dog1 == dog2
dog1 == dog3
dog2 == dog3

dog1 === dog2
dog2 === dog3

class Buffalo {
    var animal: Animal
    init(a: Animal) {
        self.animal = a
    }
}



var anAnimal = Animal(name: "annette")
anAnimal.name
var aBuffalo = Buffalo(a: anAnimal)
aBuffalo.animal.name
aBuffalo.animal.name = "carl"
aBuffalo.animal.name
anAnimal.name


protocol Timeable {
    var runtime: Int {get set}
}

class TVSeries: Timeable {
    var runtime: Int
    init(runtime: Int) {
        self.runtime = runtime
    }
}

class Channel {
    var name: String
    var currentShow: Timeable?
    var howLongUntilNextShow: Int {
        get {
            return currentShow?.runtime ?? 0
        }
    }
    init(name: String) {
        self.name = name
    }
}

var gameOfThrones = TVSeries(runtime: 60)
var hbo = Channel(name: "HBO")
hbo.currentShow = gameOfThrones
hbo.howLongUntilNextShow
