//
//  OrderDetailContactCell.swift
//  FCRiders
//
//  Created by joe on 10/13/26.
//

import UIKit

class OrderDetailContactCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var addressLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    
    @IBOutlet private weak var contactButton: UIButton!
    
    static let cellIdentifier = "OrderDetailContactCell"
}
