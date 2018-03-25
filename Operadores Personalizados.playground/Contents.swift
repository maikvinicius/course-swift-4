// Operadores Personalizados

// Unários -> Operam somente em 1 operando
// prefix
// postfix

// Binários -> Operam em 2 operando
// infix

// PREFIX

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int]{
    let result = rhs.map({$0 - 1})
    return result
}

let ages = [20, 10, 11, 30, 40]
let lastAges = <|ages

// POSTFIX

postfix operator ⚡︎
postfix func ⚡︎ (lhs: Int) -> Int{
    
    var result = 1
    
    if lhs < 2{
        return result
    }
    
    for i in 2...lhs{
        result *= i
    }
    
    return result
}

3⚡︎
4⚡︎
5⚡︎

// INFIX

infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}

30---10

import Foundation

infix operator >-<

func >-< (total: Int, universe: Int) -> [Int] {
    var result:[Int] = []
    while result.count < total{
        let randomNumber = Int(arc4random_uniform(UInt32(universe)) + 1)
        if !result.contains(randomNumber){
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

6>-<60
5>-<80
print("Lotofácil",15>-<25)






