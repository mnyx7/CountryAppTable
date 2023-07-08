//
//  Country.swift
//  CountryAppTable
//
//  Created by Minaya Yagubova on 28.01.23.
//

import Foundation

struct Country: Codable {
    let name: String
    let image: String
    let city: [City]
}

struct City: Codable {
    let name: String
    let image: String
    let info: String
}
