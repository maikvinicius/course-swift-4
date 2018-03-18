//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Operadores Binários

// Operador de Atribuição: =

let gravity = 9.81
var (name, age) = ("Maik", 21)
print(name)
print(age)

// Operadores Aritméticos: Soma (+), Subtração (-), Multiplicação (*), Divisão (/), Módulo (%)

// Soma: +

var age1 = 21
var age2 = 19
let sum = age1 + age2

// Subtração: -

let minus = age1 - age2

// Multiplicação: *

let multiply = age1 * age2

let time1 = 12
let time2 = 14.75

let result = Double(time1) + time2

// Divisão: /

let division = age1 / age2

// Módulo: %

let toys = 35
let kids = 6

let modulus = toys % kids

// Operador Composto: Atribui e opera ao mesmo tempo
age1 = age1 + age2
age1 += age2

//-=, *=, /=, %=

var products = 125
var lastBuy = 22

products -= lastBuy

// Comparação: Fazem comparação entre valores (sempre retornam um Bool)

// Maior que >

let grade1 = 7.5
let grade2 = 9.8

let betterThanFriend = grade1 > grade2

// Menor que <

let grade = 7.0
let minimunGrade = 7.0
let reproved = grade < minimunGrade

// Maior ou Igual a: >=
// Menor ou Igual a: <=

let approved = grade >= minimunGrade

// Operadores de igualdade: ==

let teacherName = "Eric"
let studentName = "Maik"

let sameNames = teacherName == studentName

// Desigualdade: !=

let differentNames = teacherName != studentName




