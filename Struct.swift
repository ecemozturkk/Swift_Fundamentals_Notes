struct Town {
    let name = "Yellow Town"
    var citizens = ["Alice", "Mark"]
    var resources = ["Grain": 10, "Wool": 21]
    
    func fortify (){
        print("Defences increased!")
    }
}

var myTown = Town()

print(myTown.citizens)
myTown.citizens.append("Jessie")
print(myTown.citizens.count)
myTown.fortify()

//___________________________________________________________________________________________________________________________

struct Town {
  let name: String
  var citizens: [String]
  var resources: [String: Int]
  
  init(townName: String, people: [String], stats: [String: Int]){
    name = townName
    citizens = people
    resources = stats
  }
  func fortify() {
    print ("Defences increased!")
  }
}
var anotherTown = Town(townName:"Green Town", people:["Tom"], stats:["Coconuts": 100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)

//___________________________________________________________________________________________________________________________

struct Town {
  let name: String
  var citizens: [String]
  var resources: [String: Int]
  
  init(name: String, citizens: [String], resources: [String: Int]){
    self.name = name
    self.citizens = citizens
    self.resources = resources
  }
  func fortify() {
    print ("Defences increased!")
  }
}
var anotherTown = Town(name:"Green Town", citizens:["Tom"], resources:["Coconuts": 100])

var ghostTown = Town(name:"Red Town", citizens:[], resources:["Corn": 10])

anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
ghostTown.fortify()


//___________________________________________________________________________________________________________________________
/*
[Coding Exercise] Structures
You are about to create the next big social networking app, exclusive to business leaders called KingPin.
  -> Define a Structure
        As part of this app, you need to define a struct called User to represent a user.
        This struct needs to hold onto the user's name, email (optional), number of followers, and whether they are active or not. 
        The User struct needs to have the properties:
        - name
        - email?
        - followers
        - isActive
        The Struct also needs to have a method called logStatus(). If the user is active, the method needs to print "XXX is working hard". 
        Otherwise, it needs to print "XXX has left earth" (where XXX is the name of the user).

  -> Initialise the Structure
        After you have defined the struct, create a user with the name "Richard" with 0 followers who not active. 
        Then print the status of this user to the console with logStatus().
        To succeed in this challenge, the console will need to read:
          
          Richard has left earth
 
          Diagnostic code (i.e., Challenge Hint):
          Elon is working hard
          Contacting Elon on elon@tesla.com ...
          Elon has 2001 followers
          Elon has left earth
*/

func exercise() {

 struct User {
    var name: String
    var email: String?
    var followers: Int
    var isActive: Bool
    
    init (name: String, email: String? = nil, followers: Int, isActive: Bool){
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus(){
        if isActive == true {
            print("\(name) is working hard")
        }
        else {
            print("\(name) has left earth")
        }
    }
}


let task = User(name: "Richard", followers: 0 , isActive: false)
task.logStatus() 

    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}
