//
//  main.swift
//  Closures-as-Parameters
//
//  Created by Felipe Augusto Correia on 15/05/23.
//

import Foundation

// Essa função espera uma closure que não retorna nada.

let driving = {
    print("I'm driving in my car.")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

