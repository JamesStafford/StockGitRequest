//
//  main.swift
//  Stock Reader
//  
//  Learning how to make HTTP requests.
//
//  Created by James Stafford on 6/26/17.
//  Copyright © 2017 James Stafford. All rights reserved.
//

import Foundation

let key = String()
let url = URL(string: "https://www.quandl.com/api/v3/datasets/WIKI/FB/data.json?api_key=\(key)")!
let urlSession = URLSession(configuration: .default)

let task = urlSession.dataTask(with: url) {
    (data, response, error) in
    if (error != nil) {
        print("error: \(String(describing: error))")
    } else {
        print("data: \(String(describing: data))")
        print("response: \(String(describing: response))")
        
        let json = try? JSONSerialization.jsonObject(with: data!, options: [])
        print("json: \(String(describing: json))")
    }
}
task.resume()

RunLoop.main.run()
