//
//  OrderDetailViewInteractor.swift
//  FCRiders
//
//  Created by joe on 10/17/26.
//

import CoreLocation
import UIKit
import MBAkit

class OrderDetailViewInteractor: ViewInteractorConfigurable {
    typealias VC = OrderDetailViewController
    var detailViewDelegate: OrderDetailViewDelegate?

    func handleMessage(_ interactionMessage: VC.IM) {
        switch interactionMessage {
        case .updateDetailView(orderDetailInfo: let orderDetailInfo, vc: let vc):
            self.detailViewDelegate = OrderDetailViewDelegate(detailInfo: orderDetailInfo, on: vc)
            vc.tableView.dataSource = detailViewDelegate
            vc.tableView.delegate = detailViewDelegate
            vc.tableView.reloadData()

        case .drawRoute(locations: let locations, vc: let vc):
            guard let detailViewDelegate = self.detailViewDelegate else { return }
            detailViewDelegate.drawRoutes(locations)
            vc.tableView.dataSource = detailViewDelegate
            vc.tableView.delegate = detailViewDelegate
            vc.tableView.reloadData()
        }
    }
}
