//
//  main.swift
//  Closures-Parameters
//
//  Created by Felipe Augusto Correia on 15/05/23.
//

import Foundation

// Aceitando parâmetros na closure.
// Para chamar as closures não é possível colocar nome nos parâmetros.

let driving = { (location: String) in
    switch location {
    case "Paris":
        print("Driving to Paris")
    case "Milan":
        print("Driving to Milan")
    default:
        print("Driving")
    }
}

driving("Milan")


let eating = {(meal: String) in
    print("I'm eating \(meal) right now.")
}

eating("Pizza")

let cooking = {(meal: String) in
    switch meal {
    case "Pizza":
        print("I'm cooking Pizza.")
    case "Hamburger":
        print("I'm cooking Hamburger.")
    default:
        print("I'm cooking.")
    }
}

cooking("Hamburger")

