// Protocolo

enum FuelType{
    case gasoline, ethanol, diesel, flex
}

protocol ACCapable {
    var hasAC: Bool{get set}
    func turnAc(on: Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
    
}

class Car:Vehicle, ACCapable{
    
    var numberOfDoors: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAc(on: Bool) {
        if on{
            print("Ligando ar condicionado!")
        }else{
            print("Desligando ar condicionado!")
        }
    }
    
}

class Bike:Vehicle{
    
    var cc: Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
    
}

class Airplane:Vehicle, ACCapable{
    
    var numberOfEngines: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAc(on: Bool) {
        if numberOfEngines > 1{
            print("Aviões mono-motores não podem ligar arcondicionado")
        }else{
            if on{
                print("Ligando ar condicionado!")
            }else{
                print("Desligando ar condicionado!")
            }
        }
    }
    
}

//extension Bike:ACCapable{
//    
//}













