//
//  currentWeatherData.swift
//  weatherWithAPI
//
//  Created by Константин Сабицкий on 24.04.2020.
//  Copyright © 2020 Константин Сабицкий. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}



struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}
struct Weather: Codable {
    let id: Int
}
