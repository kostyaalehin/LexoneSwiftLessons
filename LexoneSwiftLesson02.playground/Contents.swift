// The Deligation Story

protocol OlderHobbitDeligate: AnyObject {
    func getAGlassOfWaterToOldHobbit()
}

class GrandfatherHobbit {
    weak var deligate: OlderHobbitDeligate?

    func tellAnyHobbitToGetSomeWater() {
        deligate?.getAGlassOfWaterToOldHobbit()
    }
}

class BadGrandson: OlderHobbitDeligate {
    func getAGlassOfWaterToOldHobbit() {
        print("Go get it yourself!")
    }
}

class GoodGrandson: OlderHobbitDeligate {
    func getAGlassOfWaterToOldHobbit() {
        print("Here is your water!")
    }
}

//The Story

let oldHobbit = GrandfatherHobbit()
let ivan = BadGrandson()
let petr = GoodGrandson()

oldHobbit.deligate = ivan
oldHobbit.tellAnyHobbitToGetSomeWater()

oldHobbit.deligate = petr
oldHobbit.tellAnyHobbitToGetSomeWater()
