//
//  APICaller.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/15/22.
//

import Foundation

final class APICaller {
    
    static let shared = APICaller()
    
    var top_Crypto = [CryptoList]()
    
    struct Constants {
        static let assetsEndPoint = "https://api.coingecko.com/api/v3/coins/"
    }
    
    private init() {
        
    }
    
    public func getAllCryptoData(completion: @escaping (Result<[CryptoList], Error>) -> Void) {
        guard let url = URL(string: Constants.assetsEndPoint + "markets?vs_currency=usd&symbols=ton")//&ids=bitcoin, symbols=zam)
        else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let jsonResult = try JSONDecoder().decode([CryptoList].self, from: data)
                completion(.success(jsonResult))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
