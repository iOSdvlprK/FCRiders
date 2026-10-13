//
//  ControlExtension.swift
//  FCRiders
//
//  Created by joe on 10/12/26.
//

import UIKit

extension UIControl {
    @discardableResult
    func addAction(for controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping()->()) -> Self {
        self.addAction(UIAction { (action: UIAction) in closure() }, for: controlEvents)
        return self
    }
}
