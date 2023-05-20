//
//  main.swift
//  Initializers
//
//  Created by Felipe Augusto Correia on 19/05/23.
//

import Foundation

// Initializers ou construtores nos permitem inicializar nossas propriedades com diferentes valores quando criamos um objeto de uma struct.


struct User {
    var name: String
}

var user = User(name: "Felipe")

print("=================================")

struct Sport {
    var name: String
    
    init(){
        self.name = "Futebol"
        print("Criando novo esporte!")
    }
}

var sport = Sport()
print(sport.name)

print("=================================")

struct Person {
    var name: String
    
    init() {
        self.name = "Default"
    }
}

var person = Person()
print(person.name)

print("=================================")

struct Person2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var person2 = Person2(name: "Ana")
print(person2.name)
