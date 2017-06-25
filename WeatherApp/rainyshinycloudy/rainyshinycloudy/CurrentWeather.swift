//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by John Peppe on 6/17/17.
//  Copyright © 2017 John Peppe. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "\(currentDate)"
        
        return _date
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
     return _currentTemp

}
    
    func downloadWeatherDetails(completed: @escaping downloadComplete) {
        //Alamofire download
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                                            }
                }
              
                if let main = dict["main"] as? Dictionary<String, Any> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToCelsiusPreDivision = (currentTemperature - 273.15)
                        let kelvinToCelsius = Double(round(10 * kelvinToCelsiusPreDivision / 10))
                        self._currentTemp = kelvinToCelsius
                        
                    }
                }
                
            }
            completed()
        }
        
        
    }

}
