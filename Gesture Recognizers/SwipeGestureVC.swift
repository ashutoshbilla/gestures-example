//
//  SwipeGestureVC.swift
//  Gesture Recognizers
//
//  Created by Ashutosh Billa on 27/08/17.
//  Copyright © 2017 Ashutosh Billa. All rights reserved.
//

import UIKit

class SwipeGestureVC: UIViewController {
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            swipeUp.direction = .up
            
            let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            swipeDown.direction = .down
            
            let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            swipeLeft.direction = .left
            
            let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            swipeRight.direction = .right
            
            label.addGestureRecognizer(swipeUp)
            label.addGestureRecognizer(swipeDown)
            label.addGestureRecognizer(swipeLeft)
            label.addGestureRecognizer(swipeRight)
        }
    }
    
    
    func handleSwipe(sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.up:
            label.center.y -= 30
        case UISwipeGestureRecognizerDirection.down:
            label.center.y += 30
        case UISwipeGestureRecognizerDirection.left:
            label.center.x -= 30
        case UISwipeGestureRecognizerDirection.right:
            label.center.x += 30
        default:
            break
        }
    }
    
    

}
