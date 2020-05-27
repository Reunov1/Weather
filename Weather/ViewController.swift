//
//  ViewController.swift
//  Weather
//
//  Created by Александр Реунов on 26.05.2020.
//  Copyright © 2020 Александр Реунов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    let networkWeazerManager = NetworkWeazerManager()
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeazerManager.fetchCurrentWeather(forCity: "London")
        
    }
}
