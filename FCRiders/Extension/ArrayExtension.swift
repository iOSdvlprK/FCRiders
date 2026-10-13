//
//  ArrayExtension.swift
//  FCRiders
//
//  Created by joe on 10/12/26.
//

import Foundation

extension Array {
    subscript(safe index : Int) -> Element? {
        if 0 <= index && index < self.count {
            return self[index]
        }

        return nil
    }
}
