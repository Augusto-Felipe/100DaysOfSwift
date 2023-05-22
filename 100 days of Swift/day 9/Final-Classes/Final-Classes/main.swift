//
//  main.swift
//  Final-Classes
//
//  Created by Felipe Augusto Correia on 21/05/23.
//

import Foundation

// Significa que sua classe não pode ser herdada por nenhuma outra sendo assim não sendo possivel fazer qualquer tipo de alteração.


final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
