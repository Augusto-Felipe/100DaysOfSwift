//
//  main.swift
//  Computed-Properties
//
//  Created by Felipe Augusto Correia on 18/05/23.
//

import Foundation

// Propriedades computadas -> roda um código para descobrir seu valor, no caso do isCoupe retorna um valor diferente dependendo das outras propriedades.
// É usada caso se por acaso sua propriedades for raramente lida ou quando depender de outras propriedades da sua struct como no caso abaixo.
// Constantes não podem ser propriedades computadas.

struct Car {
    var numberOfSeats: Int
    var numberOfDoors: Int
    
    var isCoupe: String {
        if numberOfDoors == 2 && numberOfSeats == 2 {
            return "Car is a coupe"
        } else {
            return "Normal car"
        }
    }
}

var myCar = Car(numberOfSeats: 4, numberOfDoors: 2)
print(myCar.isCoupe)

print("=======================================================")

struct Medicine {
    var amount: Int
    var frequency: Int
    var dosage: String {
        return "Take \(amount) pills \(frequency) times a day."
    }
}

var myMedicine = Medicine(amount: 2, frequency: 3)
print(myMedicine.dosage)

print("=======================================================")


