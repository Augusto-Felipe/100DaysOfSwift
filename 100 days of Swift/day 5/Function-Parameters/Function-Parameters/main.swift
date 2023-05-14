//
//  main.swift
//  Function-Parameters
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Parâmetros -> nos permitem receber dados dentro da função e manipula-los.

func greeting(name: String) {
    print("Welcome, \(name)")
}

greeting(name: "Felipe")

print("=====================================")

func soma(n1: Int, n2: Int) {
    print("A soma entre \(n1) + \(n2) = \(n1+n2)")
}

soma(n1: 4, n2: 9)

