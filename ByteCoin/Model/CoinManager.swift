//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "B95405A5-41CA-49F2-9238-A3D774FA3AEB"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String){
          let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        if let url = URL(string:urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, repsonse, error in
                if error != nil {
                    print(error!)
                    return
                }
                let dataAsString = String(data:data!, encoding: .utf8)
                print(dataAsString)
            }
            task.resume()
        }
    }
    
}
