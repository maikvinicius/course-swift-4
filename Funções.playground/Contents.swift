// Funções

/*
func nome(parametro: Tipo) -> TipoDeRetorno {
    Código e comandos
    
    return TipoDeRetorno
}
*/

func sayHello(){
    print("Hello!")
}

sayHello()

func say(message: String){
    print(message)
}

say(message: "Bom dia!")

func say(message: String, to: String) -> String {
    return message + " " + to
}

let sentence = say(message: "Boa noite", to: "Caroline")
print(sentence)

func sum(_ a: Int, b: Int) -> Int {
    return a + b
}

print(sum(10, b: 20))

func multiply(_ number1: Int, by number2: Int) -> Int {
    return number1 * number2
}

print(multiply(20, by: 10))

func sum(_ initialValue: Int, withValues values: Int...) -> Int {
    var results = initialValue
    
    for value in values{
        results += value
    }
    
    return results
}

print(sum(2, withValues: 10, 10, 10, 10))

import Foundation


let studentData = "Maik Vinicius Guimaraes:21"

func getStudentInfo(_ data: String) -> (name: String, age: Int){
    let info = data.components(separatedBy: ":")
    let studentName = info[0]
    let studentAge = Int(info[1])
    return (studentName, studentAge!)
}

let student = getStudentInfo(studentData)
print(student.name)
print(student.age)















