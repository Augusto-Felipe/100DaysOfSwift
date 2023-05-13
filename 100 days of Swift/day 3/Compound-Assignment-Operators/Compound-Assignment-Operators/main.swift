//
//  main.swift
//  Compound-Assignment-Operators
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation
// Operador de atribuição é um jeito mais simples de somar um valor à uma variável.
// Ao invés de reescrever a variável, usamos apenas o operador aritmético seguido de um sinal de igual.

// Forma comum
var valor = 10
var valorIncrementado = valor + 10
print(valorIncrementado)

// Usando um operador de atribuição
var salario = 2500
var bonus = 500

salario += bonus
print(salario)

salario -= bonus
print(salario)

salario *= bonus
print(salario)

salario /= bonus
print(salario)

// Usando um operador de atribuição em uma string
var quote = "Learning"
var topic = "coumpond operators"
var result = quote + " " + topic
print(result)
print(quote + " " + topic)
