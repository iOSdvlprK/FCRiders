//
//  OrderDetailDescriptionCell.swift
//  FCRiders
//
//  Created by joe on 10/13/26.
//

import UIKit

class OrderDetailDescriptionCell: UITableViewCell {
    @IBOutlet private weak var priceLabel: UILabel!
    
    @IBOutlet private weak var departureAreaLabel: UILabel!
    @IBOutlet private weak var departureTitleLabel: UILabel!
    @IBOutlet private weak var departureAddressLabel: UILabel!
    
    @IBOutlet private weak var destinationAreaLabel: UILabel!
    @IBOutlet private weak var destinationAddressLabel: UILabel!
    
    @IBOutlet private weak var estimatedTimeLabel: UILabel!
    @IBOutlet private weak var currentStatusLabel: UILabel!
    
    @IBOutlet private weak var delivaryButton: UIButton!
    @IBOutlet private weak var delivaryButtonTitle: UILabel!
    
    @IBOutlet private weak var departureMilestone: UIView!
    @IBOutlet private weak var pickupMilestone: UIView!
    @IBOutlet private weak var delivaryMilestone: UIView!
    
    static let cellIdentifier = "OrderDetailDescriptionCell"
    
    private var dealInfo: OrderDetailInfo?
}
