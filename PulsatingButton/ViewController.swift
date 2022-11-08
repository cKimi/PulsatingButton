//
//  ViewController.swift
//  PulsatingButton
//
//  Created by Carlos Kimura on 08/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.layer.cornerRadius = btn.frame.height / 2
        btn.clipsToBounds = true
    }

    @IBAction func onClickBtn(_ sender: UIButton) {
        let pulse = PulseAnimation(numberOfPulses: 4, radius: 50, position: sender.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = UIColor.systemBlue.cgColor
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
    }
}

