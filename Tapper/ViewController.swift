//
//  ViewController.swift
//  Tapper
//
//  Created by Benjamin Pena on 11/19/16.
//  Copyright © 2016 Pena Creations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //these are variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    // these are outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImage.isHidden = true
            playButton.isHidden = true
            howManyTapsTxt.isHidden = true
            
            tapButton.isHidden = false
            tapsLabel.isHidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImage.isHidden = false
        playButton.isHidden = false
        howManyTapsTxt.isHidden = false
        
        tapButton.isHidden = true
        tapsLabel.isHidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    
}

