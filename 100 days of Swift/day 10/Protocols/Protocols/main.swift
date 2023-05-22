//
//  main.swift
//  Protocols
//
//  Created by Felipe Augusto Correia on 22/05/23.
//

import Foundation

// Protocols -> um jeito de dizer quais propriedades e métodos algo vai ter.

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My id is \(thing.id)")
}
