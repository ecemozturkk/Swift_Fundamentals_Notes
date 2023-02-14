import UIKit

func calculator (n1:Int, n2:Int, operation: (Int, Int) -> Int) -> Int{
    return operation(n1, n2)
}

func add (no1: Int, no2:Int) -> Int {
    return no1 + no2
}

func multiply (no1:Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: add(no1:no2:))
calculator(n1: 5, n2: 4, operation: multiply(no1:no2:))

// IN ORDER TO MAKE THE SHORTER VERSION WE CAN USE:
// MARK: CLOSURES

//Closures are anonymous functions

// To convert a function to a closure, all we need to do is :
// * remove the keyword "func" and the name of the function.
// * move the opening curly bracket to the beginning of the closure
// * add the "in" keyword

// From this
/*
func myFunction (firstNumber: Int) -> Int {
    return firstNumber
}
*/
// To this
/*
 {
 (firstNumber:Int, secondNumber:Int) -> Int in
 return firstNumber + secondNumber
 }
 */

func calculator2 (n3:Int, n4:Int, operation2: (Int, Int) -> Int) -> Int {
    return operation2(n3,n4)
}

/*
let result = calculator2(n3: 5, n4: 2, operation2: {(no3:Int, no4:Int) -> Int in
        return no3*no4
})
*/
// Shorter version of calculator2:
//let result = calculator2(n3: 5, n4: 2, operation2:{$0 * $1})

// More shorter
let result = calculator2(n3: 5, n4: 2) {$0 * $1}

print (result)

//________________________________________________________________________________________________________________________
//MARK: Another example

let array = [1,2,3,4,5,6]

func addOne (n1:Int) -> Int {
    return n1 + 1
}
array.map(addOne)

// WITH CLOSURES
/*
 array.map({ (n1:Int) -> Int in
 return n1 + 1
 })
 */
// SHORTER VERSION
/*
 array.map({ (n1) in
 n1 + 1
 })
 */
// MORE SHORTER VERSION
print(array.map{$0 + 1})
