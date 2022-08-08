//
//  ViewController.swift
//  trafficLight
//
//  Created by Macbook - Даниил on 08.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightSignal: UIView!
    @IBOutlet var yellowLightSignal: UIView!
    @IBOutlet var greenLightSignal: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSignal.alpha = 0.3
        yellowLightSignal.alpha = 0.3
        greenLightSignal.alpha = 0.3
        
        redLightSignal.layer.cornerRadius = redLightSignal.frame.size.width/2
        yellowLightSignal.layer.cornerRadius = redLightSignal.frame.size.width/2
        greenLightSignal.layer.cornerRadius = redLightSignal.frame.size.width/2
        
        startButton.layer.cornerRadius = 15
    }

    @IBAction func StartButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        redLightSignal.alpha = 1
    }
    
}

