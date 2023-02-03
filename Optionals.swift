let myOptional: String?

myOptional = "Jack"

let text: String = myOptional // ERROR. Bc "text" expects a string but myOptional's data type is Optional String

// MARK: FORCE UNWRAPPING

let text: String = myOptional! //I say that myOptional is never going to be nil.

//But what if myOptional2 actually equals to nil?
let myOptional2: String?
myOptional2 = nil
let text2: String = myOptional2! //ERROR!!!



// MARK: CHECK FOR NIL VALUE

let myOptional3: String?
myOptional3 = nil
if myOptional3 != nil {
    let text3: String = myOptional3!
} else {
    print("myOptional3 was found to be nil")
}
// OUTPUT: myOptional3 was found to be nil



// MARK: OPTIONAL BINDING
// We can create an "if let" to bind the value of the optional if it's not nil to a new constant, and within the curly braces of this "if" statement, we can now work with this safe version of the optional which has been unwrapped.

let myOptional4: String?
myOptional4 = "Jack"
if let safeOptional = myOptional4 {
    let text4: String = safeOptional
    let text5: String = safeOptional
    print(safeOptional)
}
else{
    print("myOptional4 was found to be nil.")
}
// OUTPUT: Jack

/*
 It opens the box(myOptional4), seeing if there is anything inside.
 If it's nil, then simply go to "else" statement.
 But if it is not nil, then put the value inside myOptional4 (Jack), inside "safeOptional"
 */



// MARK: NIL COALESCING OPERATOR
/*
 USAGE: optional ?? defaultValue
 
 "??" is called Nil Coalescing Operator. It checks to see if the "optional" is nil.
 If it's not nil, then we're going to use that value. But if it is nil, then we're going to use the provided "defaultValue".
 */

let myOptional5: String?

myOptional5 = nil
let text6: String = myOptional5 ?? "Default Value"
print(text)
// OUTPUT: Default Value



// MARK: OPTIONAL CHAINING for optional struct or oprional class
// USAGE: optional?.property    =>  If this optional is not nil, then contiune along this chain and go head and access that property.
// USAGE: optional?.method()    => If the optional had an associated method, then only when it's not nil, we execute that method.
struct MyOptional {
    var property = 123
    func method () {
        print("I'm the struct's method")
    }
}

let myOptional6 : MyOptional?
myOptional6 = nil
print(myOptional6?.property) // OUTPUT: nil

let myOptional7: MyOptional?
myOptional7 = MyOptional()
myOptional7?.method() // OUTPUT: I'm the struct's method
