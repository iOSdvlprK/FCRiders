//
//  OrderCompletionViewInteractor.swift
//  FCRiders
//
//  Created by joe on 10/23/26.
//

import Combine
import MBAkit
import UIKit
import AVFoundation

class OrderCompletionViewInteractor: ViewInteractorConfigurable {
    typealias VC = OrderCompletionViewController
    
    private var photoManager: PhotoManager?
    private(set) var cancellables = Set<AnyCancellable>()
    
    func handleMessage(_ interactionMessage: VC.IM) {
        switch interactionMessage {
        case .presentCameraViewController(let imageView, let vc):
            let photoManager = PhotoManager()
            photoManager.photoSubject
                .receive(on: DispatchQueue.main)
                .sink { [weak self] result in
                    result.fold { image in
                        imageView.image = image
                    } failure: { error in
                        print(error.localizedDescription)
                    }
                    self?.photoManager = nil
                }
                .store(in: &self.cancellables)
            
            photoManager.presentImagePickerViewcontroller(with: .video,
                                                          sourceType: .camera,
                                                          allowEditing: false,
                                                          on: vc)
            self.photoManager = photoManager
            
        case .dismissCompletionViewController(let vc):
            let parentVC = vc.presentingViewController
            vc.dismiss(animated: true) {
                let alertView = UIAlertController(title: "주문 전달 완료",
                                                  message: nil,
                                                  preferredStyle: .alert)
                alertView.addAction(UIAlertAction(title: "확인", style: .default))
                parentVC?.present(alertView, animated: true)
            }
        }
    }
}
