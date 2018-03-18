var name1 = "Fulano"
var name2 = "Ciclano"

var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumbers: [Int] = []
var phoneNumbers: [String]?

var ages: [UInt8] = [9, 7, 12, 15, 22] // UInt8

var guests = ["João", "Paula", "Alexandre", "Patricia", "Sandra"]

print(guests.count)

print(guests.isEmpty)

let secondGuest = guests[1]
guests[0] = "Henrique"

print(guests)

guests[0...1] = ["Eric", "Roberto", "Bia"]

print(guests)

if let first = guests.first{
    print(first)
}

if let last = guests.last{
    print(last)
}

guests += ["Sandro", "Elena", "Hellen"]
print(guests)

guests.append("Edna")
print(guests)

guests.insert("Romildo", at: 2)
print(guests)

//guests.removeFirst()
//print(guests)
//
//guests.removeLast()
//print(guests)
//
//guests.remove(at:2)
//print(guests)
//
//guests.removeAll()
//print(guests)

if guests.contains("Elena"){
    print("A Elena foi convidada!")
}









