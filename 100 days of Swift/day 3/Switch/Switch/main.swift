//
//  main.swift
//  Switch
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Se por acaso você tiver muitas condições usando if e else if pode ser interessant usar Switch Cases.

let score = 120

switch score {
case 100:
    print("Acertou 100.")
case 200:
    print("Acertou 200.")
case 50:
    print("Acertou 50")
default:
    print("Default")
}

print("=======================")

let weather = "sunny"

switch weather {
case "sunny":
    print("Sunny day")
case "cloudy":
    print("Cloudy day")
default:
    print("Unknow")
}

print("=======================")

// Fallthrough -> continua a execução do código.
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

print("=======================")

let name = "Felipe"

switch name {
case "Felipe":
    print("Errou!")
case "Bernardo":
    print("Acertou")
default:
    print("Errou feio!")
}


