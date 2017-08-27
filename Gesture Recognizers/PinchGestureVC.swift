//
//  PinchGestureVC.swift
//  Gesture Recognizers
//
//  Created by Ashutosh Billa on 27/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class PinchGestureVC: UIViewController {
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
            label.addGestureRecognizer(pinch)
        }
    }

    var scale: CGFloat = 1.0 {
        didSet {
            label.bounds.size.width *= scale
            label.bounds.size.height *= scale
            
        }
    }

    func handlePinch(sender: UIPinchGestureRecognizer) {
        switch sender.state {
        case .began, .changed:
            scale = sender.scale
            sender.scale = 1
        default:
            break
        }
    }

}
