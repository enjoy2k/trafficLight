//
//  ViewController.swift
//  trafficLight
//
//  Created by Macbook - Даниил on 08.08.2022.
//

import UIKit

enum ColorLight {  // Если перечисление может быть доступно для изменения, тогда его можно вынести за пределы класса(Наверх). Внутри класса оно должно быть приватным.
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightSignal: UIView!
    @IBOutlet var yellowLightSignal: UIView!
    @IBOutlet var greenLightSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var lightSwitcher = ColorLight.red
    private let lightIsOn: CGFloat = 1 // Свойство сделано для того чтобы не прописывать каждый раз руками
    private let lightIsOff: CGFloat = 0.3 // Очень классный пример привели: Выключатель. Либо так либо так
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        redLightSignal.alpha = lightIsOff
        yellowLightSignal.alpha = lightIsOff
        greenLightSignal.alpha = lightIsOff
    }

    override func viewWillLayoutSubviews() {
        redLightSignal.layer.cornerRadius = redLightSignal.frame.width / 2
        yellowLightSignal.layer.cornerRadius = redLightSignal.frame.width / 2
        greenLightSignal.layer.cornerRadius = redLightSignal.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch lightSwitcher {
        case .red:
            greenLightSignal.alpha = lightIsOff
            redLightSignal.alpha = lightIsOn
            lightSwitcher = .yellow
        case .yellow:
            redLightSignal.alpha = lightIsOff
            yellowLightSignal.alpha = lightIsOn
            lightSwitcher = .green
        case .green:
            yellowLightSignal.alpha = lightIsOff
            greenLightSignal.alpha = lightIsOn
            lightSwitcher = .red
        }
    }
}
