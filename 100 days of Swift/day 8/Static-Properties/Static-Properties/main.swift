//
//  main.swift
//  Static-Properties
//
//  Created by Felipe Augusto Correia on 19/05/23.
//

import Foundation

// No exemplo abaixo a propriedade estática não pertence a estância da struct e sim a propria struct, por isso é possível acessa-la de fora da classe.

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)
