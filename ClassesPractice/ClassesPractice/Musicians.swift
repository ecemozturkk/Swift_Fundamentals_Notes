//
//  Musicians.swift
//  ClassesPractice
//
//  Created by Ecem Öztürk on 1.03.2023.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
}

class Musicians {
    //Properties
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    //Initalizer
    init (nameInit: String, ageInit: Int, instrumentInit: String, typeInit: MusicianType) {
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing() {
        print("Nothing else matters..")
    }
    
}
