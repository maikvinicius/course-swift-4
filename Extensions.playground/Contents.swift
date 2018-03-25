// Extensões

import Foundation

let name = "Maik Vinícius Guimarães"

extension String {
    
    var vowels: [Character]{
        var list: [Character] = []
        for character in characters {
            switch String(character).lowercased() {
                case "a", "e", "i", "o", "u":
                   list.append(character)
                default:
                    break
            }
            return list
        }
    }
    
    func initials() -> String {
        let array = self.components(separatedBy: " ")
        let first = array.map({$0.first!})
        
        return String(first)
        
    }
    
}

print(name.initials())

class Account {
    
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
    
}

extension Account{
    convenience init(number: String, balance: String) {
        self.init(number: number)
        self.balance = balance
    }
}

let account = Account(number: "dadasdasdasd")





