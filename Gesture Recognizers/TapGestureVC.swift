//
//  TapGestureVC.swift
//  Gesture Recognizers
//
//  Created by Ashutosh Billa on 27/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class TapGestureVC: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            let singleTap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            let doubleTap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            
            singleTap.numberOfTapsRequired = 1
            doubleTap.numberOfTapsRequired = 2
            
            label.addGestureRecognizer(singleTap)
            label.addGestureRecognizer(doubleTap)
        }
    }
    
    
    func handleTap(_ sender: UITapGestureRecognizer) {
        
        switch sender.numberOfTapsRequired {
        case 1:
            label.transform = CGAffineTransform.identity
        case 2:
            label.transform = CGAffineTransform(scaleX: 2, y: 2)
        default:
            break
        }
        
        
    }
    
}
