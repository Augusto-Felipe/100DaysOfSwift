//
//  main.swift
//  Deinitializers
//
//  Created by Felipe Augusto Correia on 21/05/23.
//

import Foundation

// Código que é rodado quando a instância de uma classe é destruída.
// Colocamos dentro de um for para criar uma instância, destrui-la e criar novamente.

class Person {
    var name = "John"
    
    init() {
        print("\(name) is alive.")
    }
    
    deinit {
        print("\(name) is no more.")
    }
}

for _ in 1...3 {
    let person = Person()
}
