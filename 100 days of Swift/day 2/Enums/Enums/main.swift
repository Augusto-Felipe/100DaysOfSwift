//
//  main.swift
//  Enums
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Enums -> é o um jeito de agrupar valores que estão relacionados entre si.
enum Result {
    case sucess
    case failure
}

let result = Result.failure
print(result)

let result2 = Result.sucess
print(result2)

print("===========================================")

enum Direction {
    case north
    case south
    case west
    case east
}

let wichDirection = Direction.north
print(wichDirection)

print("===========================================")

enum Errors {
    case noInternet
    case apiResponse
}

let error = Errors.noInternet
print(error)

print("===========================================")

enum MovieGenres {
    case terror
    case comedy
    case action
}

let movieGenre = MovieGenres.action
print(movieGenre)

print("===========================================")

enum Months {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

var currentMonth = Months.december
print(currentMonth)

print("===========================================")



