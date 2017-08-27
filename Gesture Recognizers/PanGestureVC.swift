//
//  PanGestureVC.swift
//  Gesture Recognizers
//
//  Created by Ashutosh Billa on 27/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class PanGestureVC: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
            label.addGestureRecognizer(pan)
        }
    }
    
    var scale: CGFloat = 1.0 {
        didSet {
            label.bounds.size.width *= scale
            label.bounds.size.height *= scale
        }
    }
    
    func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        
        switch sender.state {
        case .began, .changed:
            label.center = CGPoint(x: label.center.x + translation.x, y: label.center.y + translation.y)

            // Sets the Translation value in the coordinate system of the superview.
            sender.setTranslation(CGPoint.zero, in: self.view)
        case .ended:
            // Do anything after the user finishes the gesture i.e. lifts the finger(s) from the screen.
            break
        default:
            break
        }
    }

}
