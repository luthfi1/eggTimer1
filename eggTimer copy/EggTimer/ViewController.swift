//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eggLabel: UILabel!
    
    let eggTimes = ["Soft": 300,"Medium": 420,"Hard":720]
    
    var secondResmaining = 60
    
    var timer = Timer()
    
    
    @IBAction func eggButton(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondResmaining =  eggTimes[hardness]!
        
         timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimes), userInfo: nil, repeats: true)
    }
    @objc func updateTimes(){
        if secondResmaining > 0{
            print("\(secondResmaining) second")
            secondResmaining -= 1
        }else{
            timer.invalidate()
            eggLabel.text = "Done(Selesai)"
        }
    }
}
