// Herança

class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound(){
        print("...")
    }
    
}

class Dog: Animal{
    func run(){
        print("O cachorro está correndo!")
    }
}

class Bird: Animal{
    
    let canFly: Bool
    
    func fly(){
        if canFly{
            print("O pássaro está voando!")
        }else{
            print("Este passáro não voa!")
        }
    }
    
    // Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    // Convinience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
    
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")

// 1) Designated Initializer deve chamar outro designated de sua classe
// 2) Um Convinience Initializer deve chamar outro initializer da mesma classe
// 3) Um Convinience Initializer deve chamar, no final, outro Designated Initializer

billy.emiteSound()
zeCarioca.emiteSound()
