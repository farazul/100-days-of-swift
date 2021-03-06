// https://dev.to/farazul
// Farazul Hoda - @farazul.hoda
import UIKit
// creating basic closures
let drivngg = {
    print("I'm Driving my car")
}
drivngg()

//accepting parameters
let drivingg = { (place: String) in
    print("I'm going place to \(place) in my car")
}

drivingg("Chennai")

//Returning values
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let mesaage = drivingWithReturn("Chennai")
print(mesaage)

//closures as prameters
let drivin = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: drivin)

//trailing closure syntax
func traval(action: () -> Void) {
print("I'm getting ready to go.")
action()
print("I arrived")
}
traval {
    print("I'm Driving car")
}

//closure with parameters
func trvl(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

trvl { (place: String) in
    print("I'm going to \(place) in my car")
}

//closure with return values
func roam(action: (String) -> String)   {
    print("I'm getting ready to go.")
    let description = action("Chennai")
    print(description)
    print("I Arrived")
}

roam {  (place: String) -> String in
    return "I'm going to \(place) in my car"
}


//Shorthand Parameters Name
func tvl(action: (String) -> String)    {
    print("I'm getting ready to go.")
        let description = action("Venice")
        print(description)
        print("I arrived!")
    
}
tvl { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
tvl { place -> String in
    return "I'm going to \(place) in my car"
}
tvl { place in
    return "I'm going to \(place) in my car"
}
tvl { place in
    "I'm going to \(place) in my car"
}
tvl {
    "I'm going to \($0) in my car" //dollar sign defines that a number starts counting                              from 0
}

//closure with multiple parameters
func traveL(action: (String, Int) -> String)    {
    print("Getting ready to go ...")
    let descrip = action("New Delhi", 60)
    print(descrip)
    print("I arrived!")
}

traveL {
    "I'm going to \($0) @ \($1) Km/hr."
}

//Returning closures
func depart()   ->  (String)    ->     Void {
    return  {
        print("I'm going to \($0)")
    }
}
let result = depart()
result("Mars")

//capturing values
func travelRound() -> (String) -> Void {
    return  {
        print("I' going to \($0)")
    }
}

let result0 = travelRound()
result0("Mars")

//closuring capture
func TravelRound() -> (String) -> Void  {
    var counter = 1
    
    return  {
        print("\(counter). I'm Going to \($0)")
        counter += 1
    }
}

result("London")
result("London")
result("London") //multiple times, th counter wil go up and up
