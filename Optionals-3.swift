protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport? //whoever sets themselves(any class or struct) as the delegate, must have tha AdvancedLifeSupport protocol adopted. So they must be able to know how to performCPR()
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR() //Medical Emergency workers have no knowledge or care of who the delegate is, but all they need to do is say, "Whoever is on call, whoever is carrying the pager, please perform CPR on this patient."
        
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    func useElectricDrill() {
        print("Whirrr..")
    }
}

/*
let Mark = EmergencyCallHandler()
let Alice = Paramedic(handler: Mark)

Mark.assessSituation()
Mark.medicalEmergency()
*/
/*
 OUTPUT:
Can you tell me what happened?
 The paramedic does chest compressions, 30 per second.
*/

let Mark = EmergencyCallHandler()
let Angela = Surgeon(handler: Mark)

Mark.assessSituation()
Mark.medicalEmergency()

/*
 OUTPUT:
 Can you tell me what happened?
 The doctor does chest compressions, 30 per second.
 Sings staying alive by the BeeGees
 */




// 13/147 Angela Yu

