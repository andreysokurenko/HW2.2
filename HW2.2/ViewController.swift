//
//  ViewController.swift
//  HW2.2
//
//  Created by Andrey on 20.03.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yelView: UIView!
    @IBOutlet weak var greenVew: UIView!
    @IBOutlet weak var buttonPress: UIButton!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 64
        yelView.layer.cornerRadius = 64
        greenVew.layer.cornerRadius = 64
        
        redView.alpha = 0.1
        yelView.alpha = 0.1
        greenVew.alpha = 0.1
        
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        switch count {
        case 0:
            greenVew.alpha = 0.1
            buttonPress.setTitle("Next", for: .normal)
            redView.alpha = 0.9
            count += 1
        case 1:
            redView.alpha = 0.1
            yelView.alpha = 0.9
            count += 1
        case 2:
            greenVew.alpha = 0.9
            yelView.alpha = 0.1
            count = 0
            
        default:
            break
        }
    }
    
}

