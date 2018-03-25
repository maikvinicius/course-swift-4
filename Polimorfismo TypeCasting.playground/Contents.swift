// Polimorfismo

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
    
    override func emiteSound() {
        print("au au au")
    }
    
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
    
    override func emiteSound() {
        print("🎶 🎶 🎶 🎶")
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

class Duck: Bird{
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, Quack, Quack")
    }
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")
let donald = Duck(color: "Branca", gender: "M", breed: "Disney")

// 1) Designated Initializer deve chamar outro designated de sua classe
// 2) Um Convinience Initializer deve chamar outro initializer da mesma classe
// 3) Um Convinience Initializer deve chamar, no final, outro Designated Initializer

billy.emiteSound()
zeCarioca.emiteSound()



// Type Casting

let animals:[Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

print("==============")

for animal in animals{
    animal.emiteSound()
    
    if animal is Dog{
        (animal as! Dog).run()
    }
    
    if animal is Duck{
        (animal as! Duck).fly()
    }
    
    if let dog = animal as? Dog{
        dog.run()
    }
    
    if let duck = animal as? Duck{
        duck.fly()
    }
    
    switch animal {
    case let dog as Dog:
        dog.run()
    case let bird as Bird:
        bird.fly()
    default:
        break
    }
    
}






