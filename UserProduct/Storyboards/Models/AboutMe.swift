//
//  AboutMe.swift
//  UserProduct
//
//  Created by Карина on 21.08.2022.
//

    struct User {
        let userName: String
        let passwodName: String
        let person: Person
        
        static func getUser() -> User{
            User(
                userName: "Karina",
                passwodName: "Password",
                person: Person.getPerson())
        }
    }
    

    struct Person {
        let name: String
        let surname: String
        let photo: String
        let bio: String
        let age: String
        let studies: Edication
        let job: Company
        
        static func getPerson() -> Person {
            Person(
                name:"Карина",
                   surname: "Красногорская",
                   photo: "Карина Красногорская",
                   bio: """
                   Карина Красногорская родилась 3 марта 2000 года в маленьком городке Выкса.
                   После окончания учебы, отучилась в школе юного журналиста в Москве, затем
                   переехала в Санкт-Петербург и поступила в университет. В феврале 2022 года поняла,
                   что журналистики в России больше нет, поэтому нужно было менять профессию. Так, она
                   и начала свой путь в IT.
                   """,
                   age: "22",
                   studies: Edication.university,
                   job: Company.publishingOffice
            )
        }
    }

    enum Company: String {
        case publishingOffice = "На невском"
    }
    
    
    enum Edication: String {
        case university = "ЛГУ им. А.С.Пушкина"
        case universityTwo = "МГУ им. М.В.Ломоносова"
    }
    
    

