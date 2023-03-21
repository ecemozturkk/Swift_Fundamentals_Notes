//
//  main.swift
//  AdvancedSwiftPractices
//
//  Created by Ecem Öztürk on 21.03.2023.
//

import Foundation

let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")
//print(classJames.age)  //OUTPUT: 50

//let structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar") //free initializer //IMMUTABLE
var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")   //MUTABLE
//print(structJames.age) //OUTPUT: 50

//MARK: IMMUTABILITY (DEĞİŞMEZLİK)
classJames.age = 51 //Classes are "Mutable"
print(classJames.age) //OUTPUT: 51

structJames.age = 51 // ERROR! Let ile tanımlandığında Struct'lar "Immutable". Var ile tanımlandığında Error vermez.
print(structJames.age) // OUTPUT: 51 ("var structJames" şeklinde tanımlandığında)

//MARK: REFERENCE VS. VALUE
let ClassJames2 = classJames
var StructJames2 = structJames

print(ClassJames2.age) //OUTPUT: 51
print(StructJames2.age) //OUTPUT: 51

ClassJames2.age = 52
StructJames2.age = 52

print(ClassJames2.age) //OUTPUT: 52
print(StructJames2.age) //OUTPUT: 52

print(classJames.age) //OUTPUT: 52 (Reference type)
print(structJames.age) //OUTPUT: 51 (Value type)

// Reference Types -> Class
// Copy -> Same object new reference (Heap'in içerisine yeni bir referans oluşturur. İki referans tek obje içerisinde işlem yapmaya çalışır. ClassJames2'nin yaşını değiştirdiğimizde, classJames'in de yaşı değişmiş olur.)

// Value Types -> Struct
// Copy -> new object -> 2 object  

//MARK: FUNCTION VS MUTATING FUNCTION
print(classJames.age)  //OUTPUT: 52
classJames.happyBirthday()
print(classJames.age) //OUTPUT: 53

print(structJames.age) //OUTPUT: 51
structJames.happyBirthday()
print(structJames.age) //OUTPUT: 52

// MARK: TUPLE
// Birden fazla değişkeni,veriyi aynı koleksiyon içerisinde göstermeye yarıyor
let myTuple = (1,3)
print(myTuple.0) // OUTPUT: 1

var myTuple2 = (1,3,5)
print(myTuple2.2) //OUTPUT: 5
myTuple2.2 = 10
print(myTuple2.2) //OUTPUT: 10

let myTuple3 = ("Ecem", 100)
print(myTuple3.1) //OUTPUT: 100

let myTuple4 = (10,[10,20,30])
print(myTuple4.1[1]) //OUTPUT: 20

let predefinedTuple : (String, String)
predefinedTuple.0 = "ABC"
predefinedTuple.1 = "DEF"

let newTuple = (name:"James", student: true)
print(newTuple.name) //OUTPUT: James


// MARK: GUARD LET vs IF LET

let myNumber = "5"

func convertToIntegerGuard (stringInput: String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}
func convertToIntegerIf (stringInput: String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    } else {
        return 0
    }
}
print(convertToIntegerGuard(stringInput: myNumber)) //OUTPUT: 5
print(convertToIntegerIf(stringInput: myNumber)) //OUTPUT: 5

// MARK: SWITCH

let myNum = 11
let myRemainder = myNum % 4
print(myRemainder) //OUTPUT: 3

if myRemainder == 1 {
    print("It's 1")
} else if myRemainder == 2 {
    print("It's 2")
} else if myRemainder == 3 {
    print("It's 3")
}

switch myRemainder {
case 1...3:
    print("It's 1,2 or 3")
case 4:
    print("It's 4")
case 5:
    print("It's 5")
default:
    print("none of the above")
}
