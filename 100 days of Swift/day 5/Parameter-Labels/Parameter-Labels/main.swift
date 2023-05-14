//
//  main.swift
//  Parameter-Labels
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Swift nos permite usar nomes diferentes para nosso parâmettro, uma para ser usado internamente na função e outro para ser usado externamente.
// Podemos usar o FOR, TO, IN

func sayHello(to name: String) {
    print("Say hello to \(name)")
}

sayHello(to: "Taylor")

print("============================")

func sendMessage(to name: String) {
    print("Sending a message to \(name)")
}

sendMessage(to: "Ana")

print("============================")

func setUserEmail(for user: String, to email: String) {
    print("User: \(user)  Email: \(email)")
}

setUserEmail(for: "Felipe", to: "felipe@hotmail.com")
