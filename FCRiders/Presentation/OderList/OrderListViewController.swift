//
//  OrderListViewController.swift
//  FCRiders
//
//  Created by joe on 10/13/26.
//

import Combine
import MBAkit
import UIKit

final class OrderListViewController: UIViewController {
    @IBOutlet private weak var orderCategoryView: FCStackView!

    @IBOutlet weak var orderListView: UITableView!
    @IBOutlet weak var orderCategoryViewHeight: NSLayoutConstraint!
}
