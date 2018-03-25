// Subscripts e Generics

class Car {
    
    var licensePlate: String
    
    subscript(index: Int) -> String{
        get{
            let characters =  Array(licensePlate)[index]
            return String(characters)
        }
        set{
            var array = Array(licensePlate)
            array[index] = Character(newValue)
            self.licensePlate = String(array)
        }
    }
    
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
    
}

let car = Car(licensePlate: "AUX-1234")
car[0] = "Z"
print(car.licensePlate)


// Generics

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var number1 = "10.0"
var number2 = "20.0"

swapValues(&number1, &number2)

number1
number2









