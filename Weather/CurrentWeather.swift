//
//  CurrentWeather.swift
//  Weather
//
//  Created by Александр Реунов on 30.05.2020.
//  Copyright © 2020 Александр Реунов. All rights reserved.
//

import Foundation

struct CurrentWeather {
    
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    
    let fellsLikeTemperature: Double
    var fellsLikeTemperatureString: String {
        return "\(fellsLikeTemperature.rounded())"
    }
    
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData)  {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        fellsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id
    }
}
