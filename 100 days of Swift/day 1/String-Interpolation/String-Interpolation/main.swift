//
//  main.swift
//  String-Interpolation
//
//  Created by Felipe Augusto Correia on 10/05/23.
//

import Foundation

// Interpolação de Strings -> permite que você insira variáveis dentro de suas strings. É possivel colocar qualquer tipo de variável dentro de uma string usando \() barra inversa e a variável entra parênteses.
// O motivo de usarmos Interpolação é que não vamos sempre trabalhar com valores estáticos, iremos trabalhar com variáveis que vão receber seus valores de outros lugares, seja de um dado baixado na internet ou o input de um usuário no teclado ou de uma API.

var name = "Ana"
var age = 28
var myAge = "My name is \(name) and i'm \(age) years old. "
print(myAge)

print("============================================================")

var cityName = "Paris"
var userName = "Richard"

print("Meu nome é \(userName) e moro em \(cityName)")

print("============================================================")

var firstName = "Carlos"
var lastName = "Ronaldo"

print("\(firstName) \(lastName)")

print("============================================================")

var alert = "Error in API"
var message = "Instalation failed with error: \(alert)"
print(message)
