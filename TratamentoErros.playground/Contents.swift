// Tratamento de Erros

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool{
    if checkInternetConnection(){
        
        if userName != "maik"{
            throw LoginError.wrongLogin
        }
        if password != "1234"{
            throw LoginError.wrongPassword
        }
        
        return true
        
    }else{
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool{
    return false
}

do {
    let loginResult = try login(userName: "maik", password: "1234")
} catch LoginError.wrongLogin {
    print("Nome do usuário inválido!")
} catch LoginError.wrongPassword{
    print("Senha Inválida!")
} catch LoginError.noInternetConnection{
    print("Sem Conexão!!!")
}

let loginResult = try? login(userName: "maik", password: "1234")
