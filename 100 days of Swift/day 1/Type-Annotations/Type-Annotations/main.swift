//
//  main.swift
//  Type-Annotations
//
//  Created by Felipe Augusto Correia on 10/05/23.
//

import Foundation

// TIPAGEM IMPLÍCITA -> quando criamos uma variável e não definimos seu tipo, o próprio swift infere seu tipo com base no valor da variável

// Veja que aqui não colocamos seu tipo porém como o valor se trata de uma String, o Swift infere automaticamente o tipo String para essa variável. Uma vez criada não é possível alterar seu tipo.

let myString = "Olá mundo"
let job = "Developer"


// TIPAGEM EXPLÍCITA -> quando criamos uma variável e definimos seu tipo.

// Aqui deixamos bem explícitos que queremos que a variável seja de determinado tipo.

let salario: Double = 2.500
let profissao: String = "Desenvolvedor"


// Motivos para usar Type Annotation ->
// Se você quiser que o Swift utilize um outro tipo ao invés do padrão. Exemplo:

let age: Double = 28


// Você deseja cria uma variável mas não quer passar um valor

var name: String
