//
//  main.swift
//  Lazy-Properties
//
//  Created by Felipe Augusto Correia on 19/05/23.
//

import Foundation

// Colocamos um propriedade como lazy quando nem sempre vai ser utilizada.
// Ela somente é criado quando é chamada.

struct FamilyTree {
    init() {
        print("Creating a family tree")
    }
}

struct Person {
    var name: String
    lazy var familytree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}

var ed = Person(name: "ed")
