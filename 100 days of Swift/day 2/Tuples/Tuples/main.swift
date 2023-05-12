//
//  main.swift
//  Tuples
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Tuples -> Nos permite armazenar vários valores e acessá-los a partir de seu index ou nome.
// Não é possivel adicionar ou remover items.
// Não é possivel mudar o tipo de items, o tipo sempre será o mesmo quando foi criado.

var name = (first: "Taylor", last: "Swift")

// Acessando o valor pelo index
print(name.0)
print(name.1)

// Acessando o valor pelo nome
print(name.first)
print(name.last)


print("==========================================================")

var filme = (titulo: "Bruxa de Blair", diretor: "Maria")
print(filme.titulo)
print(filme.diretor)

print(filme.0)
print(filme.1)

print("==========================================================")

var usuario = (nome: "Ana", idade: 27, cpf: "23343404304", isMarried: false)
print(usuario.nome)
print(usuario.idade)
print(usuario.cpf)
print(usuario.isMarried)

print(usuario.0)
print(usuario.1)
print(usuario.2)
print(usuario.isMarried)


