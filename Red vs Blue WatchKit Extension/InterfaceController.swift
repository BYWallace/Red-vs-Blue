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
        
    }
}
