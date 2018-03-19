// Estruturas (Struct)

let age: Int = 20
let name: String = "Maik"


struct Person {
    
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello(){
        print("Olá")
    }
    
    mutating func incrementAge(){
        age += 1
    }
    
}

var person = Person(name: "Maik")
person.sayHello()
person.name = "João"
print(person)

var newPerson = Person(name: "Pedro")
newPerson.age = 39
newPerson.incrementAge()
print(newPerson)

// Computed Properties (Propriedades Computadas)

struct Temperature {
    var celcius: Double
    var fahrenheit: Double{
        return celcius * 1.8 + 32
    }
}

var temperature = Temperature(celcius: 25)
print(temperature.celcius)
print(temperature.fahrenheit)









