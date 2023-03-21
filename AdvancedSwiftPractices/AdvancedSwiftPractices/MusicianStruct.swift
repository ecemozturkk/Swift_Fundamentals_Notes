//
//  MusicianStruct.swift
//  AdvancedSwiftPractices
//
//  Created by Ecem Öztürk on 21.03.2023.
//

import Foundation

struct MusicianStruct {
    var name: String
    var age: Int
    var instrument: String
    
    /*
    func happyBirthday() {
        self.age += 1 //ERROR: Left side of mutating operator isn't mutable: 'self' is immutable
    }
    */
    mutating func happyBirthday() {
        self.age += 1
    }
}
