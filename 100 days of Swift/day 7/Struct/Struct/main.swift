//
//  main.swift
//  Struct
//
//  Created by Felipe Augusto Correia on 18/05/23.
//

import Foundation

// Struct ->

struct Sport {
    var name: String
}

var sport = Sport(name: "Tennis")
print(sport.name)

sport.name = "Soccer"
print(sport.name)

print("===========================================")

struct Car {
    var numberOfSeats: Int
    var numberOfDoors: Int
}

var myCar = Car(numberOfSeats: 3, numberOfDoors: 5)
print(myCar.numberOfDoors)
print(myCar.numberOfSeats)

