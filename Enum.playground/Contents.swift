// Enumeradores: Enums

enum CompassPoint{
    case north
    case east
    case west
    case south
}

var direction: CompassPoint = CompassPoint.north

var direction2: CompassPoint = .north

direction = .south

enum SeatPosition: String{
    case aisle = "Corredor", middle = "Meio", window = "Janela"
}

var passenferSeat = SeatPosition.window

switch passenferSeat {
case .aisle:
    print("O passageiro está sentado no corredor")
case .middle:
    print("O passageiro está sentado no meio")
case .window:
    print("O passageiro está sentado na janela")
}

print(passenferSeat.rawValue)

enum Month: Int{
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

print(Month.august.rawValue)

// Valores associados (Associated Values)

enum Measure{
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let mensure: Measure = .size(width: 0.6, height: 1.71)

switch mensure {
    case .weight(let weight):
        print("O seu peso é: \(weight)")
    case .age(let age):
        print("A sua idade é: \(age)")
    case .size(let size):
        print("As suas medidas de tamanho são \(size.width)m de largura e \(size.height)m de altura ")
}







