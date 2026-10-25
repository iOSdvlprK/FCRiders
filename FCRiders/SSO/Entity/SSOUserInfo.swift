//
//  SSOUserInfo.swift
//  FCRiders
//
//  Created by joe on 10/25/26.
//

import Foundation

struct SSOUserInfo: Decodable {
    let userID: String
    let riderName: String

    enum CodingKeys: String, CodingKey {
        case userID = "id"
        case riderName = "rider_name"
    }
}
