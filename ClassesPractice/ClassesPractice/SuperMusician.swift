import Foundation

class SuperMusician : Musicians {
    
    func singMore () {
        print("enter night")
    }
    
    override func sing() {
        super.sing() //super = miras alınan sınıf(Musicians)
        print("exit light")
    }
}
