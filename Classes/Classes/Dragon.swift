class Dragon : Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Dragon says : \(speech)")
    }
    
    override func move() { // when the move method is triggered, it does something different than in Enemy(superclass) class
        print("Fly forwards")
    }
    
    //perform the method that comes from the superclass, then do new stuff as well
    //use both the functionality of the attack() method from the superclass and subclass
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage")
    }
    
}
