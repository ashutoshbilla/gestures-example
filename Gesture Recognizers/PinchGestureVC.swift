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
            // Zoom in/out according to the pinch gesture.
            scale = sender.scale
            sender.scale = 1
        case .ended:
            // Do anything after the user finishes the gesture i.e. lifts the finger(s) from the screen.
            break
        default:
            break
        }
    }

}
