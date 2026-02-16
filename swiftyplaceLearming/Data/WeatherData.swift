//
//  Weather.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import Foundation

import Foundation

struct WeatherData: Identifiable {
    let weekday: Weekday
    let iconName: String
    let lowTemperature: Int
    let hightTemperature: Int
    let progress: Double
    
    let id = UUID()
    
    static func example() -> [WeatherData] {
        [WeatherData(weekday: .monday, iconName: "cloud.fill", lowTemperature: 9, hightTemperature: 11, progress: 0.5),
         WeatherData(weekday: .tuesday, iconName: "cloud.rain.fill", lowTemperature: 12, hightTemperature: 20, progress: 0.9),
         WeatherData(weekday: .wednesday, iconName: "sun.max.fill", lowTemperature: 0, hightTemperature: 15, progress: 0.1)]
    }
}
