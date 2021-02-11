//
//  Service.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 07/02/21.
//

import UIKit


class NetworkService {
    
    func getPrimeMovies() {
        guard let url = URL(string: "https://reelgood.com/source/amazon") else {return}
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            if let data = data , error == nil {
                DispatchQueue.main.async {
                    print(data)
                }
            }
            return
        }.resume()
    }
    
    
}
