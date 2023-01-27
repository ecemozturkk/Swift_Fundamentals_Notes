let skeleton = Enemy()
print(skeleton.health)
skeleton.move() // Output : Walk forwards
skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()
dragon.move()  // Output : Fly forwards
dragon.attack() // Outout : Land a hit, does 10 damage. Spits fire, does 10 damage

dragon.wingSpan = 2 //properties are changeable
dragon.attackStrenght = 15

dragon.talk(speech: "I'm the strongest!")
