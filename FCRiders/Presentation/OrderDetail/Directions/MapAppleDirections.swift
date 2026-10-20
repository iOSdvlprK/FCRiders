//
//  MapAppleDirections.swift
//  FCRiders
//
//  Created by joe on 10/20/26.
//

import CoreLocation
import MapKit
import UIKit

class MapAppleDirections: DirectionsAvailable {
    static var canOpen: Bool {
        if let mapURL = URL(string: "maps://") {
            return UIApplication.shared.canOpenURL(mapURL)
        } else {
            return false
        }
    }

    var appName: String {
        return "Apple"
    }

    func openAppToGetDirections(with coordinates: CLLocationCoordinate2D, name: String?) {
        let regionDistance: CLLocationDistance = 10_000
        let regionSpan = MKCoordinateRegion(center: coordinates,
                                            latitudinalMeters: regionDistance,
                                            longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let location = CLLocation(latitude: coordinates.latitude, longitude: coordinates.longitude)
        let mapItem = MKMapItem(location: location, address: nil)
        mapItem.name = name
        mapItem.openInMaps(launchOptions: options)
    }
}
