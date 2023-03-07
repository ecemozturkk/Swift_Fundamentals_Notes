//
//  main.swift
//  ClassesPractice
//
//  Created by Ecem Öztürk on 1.03.2023.
//

import Foundation

let James = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: .LeadGuitar)

print(James.age)
James.sing()

let Kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Drum", typeInit: .Drummer)
Kirk.sing()
Kirk.singMore()

