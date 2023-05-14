//
//  main.swift
//  Inout-Parameters
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Todos os parâmetros passados para uma função são constantes, ou seja não é possivel mudar seus valores.
// Caso necessário mudar seus valores e que os mesmo valores se alterem fora da função, como num espelhamento podemos passar esse parâmetros como inout para poder altera-los.


func soma(n1: inout Int, n2: Int) {
    print(n1+n2)
}


