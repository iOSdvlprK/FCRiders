//
//  IntExtension.swift
//  FCRiders
//
//  Created by joe on 10/12/26.
//

import Foundation

extension Int {
    var formattedNumber: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: self)) ?? ""
    }
}
