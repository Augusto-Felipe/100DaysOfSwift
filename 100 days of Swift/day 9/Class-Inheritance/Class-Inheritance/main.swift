//
//  main.swift
//  Class-Inheritance
//
//  Created by Felipe Augusto Correia on 21/05/23.
//

import Foundation

// Herança -> uma classe filha pode herdar métodos e propriedades de uma classe pai.

class Animal {
    
    var type: String
    
    init(type: String) {
        self.type = type
    }
    
    func eat() {
        print("Animal is eating.")
    }
    
    func sleep() {
        print("Animal is sleeping.")
    }
}

class Dog: Animal {
    override init(type: String) {
        super.init(type: type)
    }
}

var dog1 = Dog(type: "Poodle")

dog1.eat()
dog1.sleep()
print(dog1.type)


print("==================================")

class Student {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class UniversityStudent: Student {
    var annualFees: Int
    
    init(annualFees: Int,name: String) {
        self.annualFees = annualFees
        super.init(name: name)
    }
}

var person1 = UniversityStudent(annualFees: 100, name: "Ana")
print(person1.name)
