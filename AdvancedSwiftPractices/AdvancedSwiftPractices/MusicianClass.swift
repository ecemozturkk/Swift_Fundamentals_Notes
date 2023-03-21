//
//  MusicianClass.swift
//  AdvancedSwiftPractices
//
//  Created by Ecem Öztürk on 21.03.2023.
//

import Foundation

class MusicianClass {
    var name: String
    var age: Int
    var instrument: String
    
    init(nameInput: String, ageInput: Int, instrumentInput: String) {
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    func happyBirthday() {
        self.age += 1
    }
}


