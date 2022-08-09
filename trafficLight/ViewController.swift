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
    var lightSwitcher = "Red"
    
    @IBAction func startButtonPressed() {
        switch lightSwitcher {
        case "Red" :
            startButton.setTitle("Next", for: .normal)
            redLightSignal.alpha = 1
            lightSwitcher = "Yellow"
        case "Yellow" :
            redLightSignal.alpha = 0.3
            yellowLightSignal.alpha = 1
            lightSwitcher = "Green"
        case "Green" :
            yellowLightSignal.alpha = 0.3
            greenLightSignal.alpha = 1
            lightSwitcher = "Back to start"
        case "Back to start" :
            greenLightSignal.alpha = 0.3
            startButton.setTitle("Start", for: .normal)
            lightSwitcher = "Red"
        default:
            break
        }
    }
}
