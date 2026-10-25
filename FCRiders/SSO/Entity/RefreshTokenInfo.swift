//
//  RefreshTokenInfo.swift
//  FCRiders
//
//  Created by joe on 10/25/26.
//

import Foundation

struct RefreshTokenInfo: Decodable {
    let accessToken: String
    let expirationTime: TimeInterval

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case expirationTime = "access_token_expiration"
    }
}
