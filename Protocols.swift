class Bird {
    var isFemale = true
    func layEgg() {
        if isFemale {
            print("The bird has eggs!")
        }
    }
    /*
    func fly() {
        print("The bird is flying!")
    }
    */
}

class Eagle : Bird, CanFly {
    func fly() {
        print("The bird is flying!")
    }
    
    func soar () {
        print("The eagle glides in the air using air currents.")
    }
}

let myEagle = Eagle()
//myEagle.fly()
myEagle.layEgg()
myEagle.soar()

class Penguin : Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
//myPenguin.fly() // PENGUINS CAN'T FLY!!
/*
 We want to be able to define the penguin as a subtype of birds, but we don't really want it to inherit the "fly" method.
 The problem => Penguin is inheriting some functionality that it shouldn't have.
 */

struct FlyingMuseum {
    func flyingShow(flyingObject: CanFly) {
        //flyingObject.fly()
    }
}

let museum = FlyingMuseum()
museum.flyingShow(flyingObject: myEagle)
//museum.flyingShow(flyingObject: myPenguin) // MISTAKE!!

/*
 At the moment, the only things that can fly are birds.
That's the one that has the fly method implemented.
And if we want to be able to use my airplane in the flying show, then it has to be a bird type because that's the only thing that we can put in here.
 */
/*
class Airplane: Bird {
    override func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}
let myPlane = Airplane()
museum.flyingShow(flyingObject: myPlane)
*/
 /*
 Even though, we've forced our code to work, there will be headaches with this way of doing this.
 For example, myPlane is now able to lay eggs which makes no sense.
 */

// MARK: So how can we seperate the flying behavior from the bird class? How can we have both classes and structures that can fly?

protocol CanFly {
    func fly()  //NOTICE: This fly method that goes into the protocol doesn't actually have an implementation. It doesn't have a set of curly braces which defines how it should be flying. In fact, If we try to do this (func fly() {}), XCode will give us a warning.
    
    // Now we can delete fly method from bird class because not all birds can fly.
    // And instead, we can say the birds that can fly, will adopt the CanFly protocol.
}

//Airplane no longer has to be a class because it doesn't need inheritance.
//Instead, it's going to adopt the CanFly protocol
struct Airplane: CanFly {
    func fly(){
        print("The airplane uses its engine to lift off into the air.")
    }
}

//After, in FlyingMuseum rather than limiting flyingShow to using flying objects that are birds (func flyingShow(flyingObject: Bird)), we are goin to use CanFly protocol as a data type. Line:46

//Now eagle and airplane can fly, but penguin can't fly but it can do all of the other things that birds do because it's still inheriting from the Bird class
myEagle.fly()
//myPenguin.fly()    ERROR
let myPlane = Airplane()
myPlane.fly()




//MARK: 13/145 Angela Yu
