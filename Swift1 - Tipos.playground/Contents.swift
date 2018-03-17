//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Int, Float, Double, Character, String, Bool

// Booleanos (Bool)

var isFirstTime: Bool = true
var likesFruits = true

// Inteiros (Int)

var age: Int = 21
var newAge = 21

// UInt - Unsigned Int

var ageUnsigned: UInt = 21

// Float -> 32b

let dolar: Float = 3.5

// Double -> 64b

let crazyNumber: Double = 100.312313123123123213123123

// Character

var gender: Character = "M"
var enter: Character = "\n"
var aspas: Character = "\""

// String

var newGender = "M"
let studentName = "Dr. Maik Vinícius Guimarães"
print(studentName)
let firstName = "Maik"
let lastName = "Guimarães"
let fullName = firstName + " " + lastName
print(fullName)

let fullNameInterpolado = "\(firstName) \(lastName) - Idade: \(age)"
print("A variável fullName tem \(fullName.count) caracteres")
print(fullNameInterpolado)

let text =
"""
Olá espero que esteja gostando do curso.
Ainda tem muito mais pela frente.
"""

print(text)
