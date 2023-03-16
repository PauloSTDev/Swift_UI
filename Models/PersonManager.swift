//
//  Person.swift
//  Swift_UI
//
//  Created by Paulo Afonso Della Mêa dos Santos on 13/03/23.
//

import Foundation

struct Person: Codable{
    let firstName, surname, imageName: String
    let age: Int
    let address: Address
    let phoneNumbers: [PhoneNumber]
}

struct Address: Codable {
    let streetAddress, city, state, postalCode: String
}

struct PhoneNumber: Codable {
    let type, number: String
}


let personJSON = """
[
    {
        "firstName": "Mario",
        "surname": "Pomodoro",
        "imageName": "img1",
        "age": 24,
        "address": {
            "streetAddress": "Via Mushroom 126",
            "city": "Mushroom City",
            "state": "Mushroom Kingdom",
            "postalCode": "111222"
        },
        "phoneNumbers": [
            { "type": "home", "number": "+390212345678" }
        ]
    },
    {
        "firstName": "Luigi",
        "surname": "Pomodoro",
        "imageName": "img2",
        "age": 25,
        "address": {
            "streetAddress": "Via Mushroom 126",
            "city": "Mushroom City",
            "state": "Mushroom Kingdom",
            "postalCode": "111222"
        },
        "phoneNumbers": [
            { "type": "home", "number": "+390212345679" }
        ]
    },
    {
        "firstName": "Toad",
        "surname": "Toad",
        "imageName": "img3",
        "age": 90,
        "address": {
            "streetAddress": "Via Mushroom 300",
            "city": "Mushroom City",
            "state": "Mushroom Kingdom",
            "postalCode": "111222"
        },
        "phoneNumbers": [
            { "type": "home", "number": "+390214345679" }
        ]
    }
]
"""

let decoder = JSONDecoder()

let personsJSONData = personJSON.data(using: .utf8)!
let personsArray = try! decoder.decode([Person].self, from: personsJSONData)


