//
//  InterfaceController.swift
//  Red vs Blue WatchKit Extension
//
//  Created by Brett Wallace on 9/2/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var colorLabel: WKInterfaceLabel!
    @IBOutlet weak var colorSlider: WKInterfaceSlider!
    @IBOutlet weak var colorSwitch: WKInterfaceSwitch!
    @IBOutlet weak var colorGroup: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        setupBlue()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func resetButtonPressed() {
        setupBlue()
    }
    
    @IBAction func switchTapped(value: Bool) {
        if value == false {
            setupRed()
        } else {
            setupBlue()
        }
    }
    
    @IBAction func sliderTapped(value: Float) {
        
        switch value {
        case 0.0:
            colorGroup.setAlpha(0.15)
        case 0.2:
            colorGroup.setAlpha(0.2)
        case 0.4:
            colorGroup.setAlpha(0.4)
        case 0.6:
            colorGroup.setAlpha(0.6)
        case 0.8:
            colorGroup.setAlpha(0.8)
        case 1.0:
            colorGroup.setAlpha(1.0)
        default:
            println("Default value printed")
        }
        
    }
    
    //MARK: - Helper Functions
    
    func setupBlue() {
        let deepSkyBlue = UIColor(red: 0.0, green: 191.0, blue: 255.0, alpha: 1.0)
        
        colorGroup.setBackgroundColor(deepSkyBlue)
        colorGroup.setCornerRadius(0.0)
        
        colorSwitch.setOn(true)
        colorSlider.setValue(1.0)
        
        colorLabel.setText("Cool")
    }
    
    func setupRed() {
        let fireBrickRed = UIColor(red: 153.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        colorGroup.setBackgroundColor(fireBrickRed)
        colorGroup.setCornerRadius(0.0)
        
        colorSwitch.setOn(false)
        colorSlider.setValue(1.0)
        
        colorLabel.setText("Hot")
    }
}
