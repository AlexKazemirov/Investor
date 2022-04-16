//
//  Models.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/15/22.
//

import Foundation

struct CryptoList: Codable {
    let current_price: Double?
    let symbol: String?
    let name: String?
    let image: String?
    var isFavorite: Bool?
}

/*
MARK: coingecko exchange
 {
   !  "id": "bitcoin",
   !  "symbol": "btc",
   !  "name": "Bitcoin",
   !  "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
   !  "current_price": 41265,
     "market_cap": 783581457904,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 865552949280,
     "total_volume": 26008038598,
     "high_24h": 41523,
     "low_24h": 39765,
     "price_change_24h": 1023.99,
     "price_change_percentage_24h": 2.54461,
     "market_cap_change_24h": 21522700391,
     "market_cap_change_percentage_24h": 2.82428,
     "circulating_supply": 19011212,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -40.30423,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 60683.68227,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2022-04-14T07:26:08.167Z"
   }
 */
