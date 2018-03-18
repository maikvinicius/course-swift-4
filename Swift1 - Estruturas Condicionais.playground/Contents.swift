//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// If - Else

var hasHeadach: Bool = false
var humor: String = ""

if hasHeadach{
    humor = "Muito p.. da vida"
}else{
    humor = "Felizão"
}

let number = 11

if number % 2 == 0{
    print("Ele é par")
}else{
    print("Ele é impar")
}

var temperature = 18

var climate = ""

if temperature <= 0 {
    climate = "Frio pra car....."
} else if temperature < 14{
    climate = "Está frio"
} else if temperature < 21 {
    climate = "Clima agradável"
} else if temperature < 30 {
    climate = "Um pouco quente"
} else {
    climate = "Muito quente"
}

let letter = "i"
var letterType = ""

if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "vogal"
}else{
    letterType = "consoante"
}

// Switch

switch letter {
    case "a", "e", "i", "o", "u":
        letterType = "vogal"
    default:
        letterType = "consoante"
}

let speed = 95.0

switch speed{
    case 0..<20:
        print("Primeira marcha")
    case 20..<40:
        print("Segunda marcha")
    case 40..<50:
        print("Terceira marcha")
    case 50..<90:
        print("Quarta marcha")
    default:
        print("Quinta marcha")
}

// Closed Range e Half-Closed Range
// ... (Closed Range)
// ..< (Half-Closed Range)

let range0_10 = 0...10
let range0_9 = 0..<10


//

let firstLetter = "m"

switch firstLetter {
    case "a"..."f":
        print("Você está no primeiro trimestre")
    case "g"..."l":
        print("Você está no segundo trimestre")
    case "m"..."r":
        print("Você está no terceiro trimestre")
    default:
        print("Você está no quarto trimestre")
}







