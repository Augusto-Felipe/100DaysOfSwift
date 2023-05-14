//
//  main.swift
//  Default-Parameters
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Você pode passar valores default para sua função já nascer com os mesmos.
// No caso de nicely, já nasce como true, porém podemos muda-lo.

func greet(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello \(person)")
    } else {
        print("Look away.")
    }
}

greet("Ana")
greet("Paulo", nicely: false)

print("============================================")

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    if route == "fastest" && avoidHighways {
        print("Estamos indo rapido pela rodovia. Prepare o dinheiro do pedágio")
    } else {
        print("Estamos indo rápido pela cidade.")
    }
}

findDirections(from: "Milan", to: "Paris", avoidHighways: false)
