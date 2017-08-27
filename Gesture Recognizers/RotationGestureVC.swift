//
//  RotationGestureVC.swift
//  Gesture Recognizers
//
//  Created by Ashutosh Billa on 27/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class RotationGestureVC: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            let rotation = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(sender:)))
            label.addGestureRecognizer(rotation)
        }
    }
    
    var rotationAngle: CGFloat = 0.0
    
    func handleRotation(sender: UIRotationGestureRecognizer) {
        switch sender.state {
        case .began:
            sender.rotation = rotationAngle
        case .changed:
            label.transform = CGAffineTransform(rotationAngle: sender.rotation)
        case .ended:
            rotationAngle = sender.rotation
        default:
            break
        }
    }

}
