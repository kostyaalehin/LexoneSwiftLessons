import Foundation

class Creature {
    var name = ""
    var health = 0
    var power = 0
    var luck = 0

    func attack(target: Creature) {
        print("Be carefull, \(name) is Attacking!")
        target.health -= power
        print("Ouch, \(target.name) health now = \(target.health)")
    }
}

class Orc: Creature {
    func roar() {
        print("Argrgrgr!")
    }
}

class Hobbit: Creature {
    func dodge() {
        print("Miss!")
    }

}

let orc = Orc()
orc.name    = "Bob"
orc.health  = 160
orc.power   = 9
orc.luck    = 0

let hobbit = Hobbit()
hobbit.name     = "Bilbo"
hobbit.health   = 65
hobbit.power    = 5
hobbit.luck     = 3

var round = 1

while orc.health > 0 && hobbit.health > 0 {
    print("Round is \(round)")
    let luckOne = Int.random(in: 1...10)
    sleep(1)
    let luckTwo = Int.random(in: 1...10)

    print("Orcs health =  \(orc.health)")
    print("Hobbit health = \(hobbit.health)")

    hobbit.luck += luckOne
    orc.luck += luckTwo

    print("Orcs luck =  \(orc.luck)")
    print("Hobbit luck = \(hobbit.luck)")

    print("Orcs turn:")
    if orc.luck < hobbit.luck && hobbit.luck > 5 {
        hobbit.dodge()
    } else {
        orc.attack(target: hobbit)
    }

    print("Hobbits turn:")
    if hobbit.health > 0 {
        hobbit.attack(target: orc)
        orc.roar()
    }

    if orc.health <= 0 {
        print("Orc is DEAD!")
        print("Hobbit WINS!")
    }

    if hobbit.health <= 0 {
        print("Hobbit is DEAD!!!")
        print("Orc WINS!")
    }

    round += 1
    print()
    sleep(3)
}
