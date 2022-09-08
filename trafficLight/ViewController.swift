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
    
//    var lightSwitcher = "Red" // Свойство должен был указать вначале
    private var lightSwitcher = ColorLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSignal.alpha = 0.3
        yellowLightSignal.alpha = 0.3
        greenLightSignal.alpha = 0.3
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redLightSignal.layer.cornerRadius = redLightSignal.frame.width/2
        yellowLightSignal.layer.cornerRadius = redLightSignal.frame.width/2
        greenLightSignal.layer.cornerRadius = redLightSignal.frame.width/2
        
        startButton.layer.cornerRadius = 15
    }
    
//    @IBAction func startButtonPressed() {
//        switch lightSwitcher {
//        case "Red" :
//            startButton.setTitle("Next", for: .normal)
//            redLightSignal.alpha = 1
//            lightSwitcher = "Yellow"
//        case "Yellow" :
//            redLightSignal.alpha = 0.3
//            yellowLightSignal.alpha = 1
//            lightSwitcher = "Green"
//        case "Green" :
//            yellowLightSignal.alpha = 0.3
//            greenLightSignal.alpha = 1
//            lightSwitcher = "Back to start"
//        case "Back to start" :
//            greenLightSignal.alpha = 0.3
//            startButton.setTitle("Start", for: .normal)
//            lightSwitcher = "Red"
//        default:
//            break
//        }
//    }
    private enum ColorLight {  // Если перечисление может быть доступно для изменения, тогда его можно вынести за пределы класса(Наверх). Внутри класса оно должно быть приватным.
        case red
        case yellow
        case green
        case backToStart
    }
    
//    Привет!!!
    
    @IBAction func startButtonPressed() {
        switch lightSwitcher {
        case .red:
            startButton.setTitle("Next", for: .normal)
            redLightSignal.alpha = 1
            lightSwitcher = .yellow
        case .yellow:
            redLightSignal.alpha = 0.3
            yellowLightSignal.alpha = 1
            lightSwitcher = .green
        case .green:
            yellowLightSignal.alpha = 0.3
            greenLightSignal.alpha = 1
            startButton.setTitle("Go!", for: .normal)
            lightSwitcher = .backToStart
        case .backToStart:
            greenLightSignal.alpha = 0.3
            startButton.setTitle("Start", for: .normal)
            lightSwitcher = .red
        }
    }
}
// Либо так:
/* extension ViewController { Расширение для класса viewController
    private enum ColorLight { Здесь он  так же приватный
case red, yellow, green, backToStart
} */
