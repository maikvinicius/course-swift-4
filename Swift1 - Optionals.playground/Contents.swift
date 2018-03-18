//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var rg: Int = 557076833

var driverLiscense: Int?
//driverLiscense = 123123123
//print("A minha carteira de motorista é", driverLiscense!) // Desembrulhando o Optional (unwrap)

// Optional binding

if let driverL = driverLiscense{
    print("A minha carteira de motorista é", driverL)
}else{
    print("Não possuo carteira de motorista")
}

let addressNumber = Int("100")

if let addressNumber = addressNumber{
    print(addressNumber)
}

//  Nil coaliscing operator (Operador de coelescência nula)

let number = "578"

let addressNumber2 = Int(number) ?? 0

// Implicit Unwrapped Optionals

var name: String!
//name = "Maik"

if name != nil {
    print(name.count)
}
