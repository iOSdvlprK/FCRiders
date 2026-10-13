//
//  ItemDetailInfo.swift
//  FCRiders
//
//  Created by joe on 10/13/26.
//

import Foundation
import MBAkit

struct ItemDetailInfo: Decodable {
    let id: Int64
    let name: String
    let quantity: Int
    
    let price: Int
    let priceUnit: String
    
    var priceLabelText: String {
        return "\(self.price.formattedNumber) \(self.priceUnit)"
    }

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case quantity
        
        case price
        case priceUnit = "price_unit"
    }
}
