//
//  ViewController.swift
//  random-number-generator
//
//  Created by Mike on 05/03/2018.
//  Copyright © 2018 Mike. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var lblText: NSTextField!
    @IBOutlet weak var btnGenerate: NSButton!
    @IBOutlet weak var txtMaxNumber: NSTextField!
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        self.view.window?.title = "Random Number Generator"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.layer?.backgroundColor = NSColor.white.cgColor
        txtMaxNumber.formatter = OnlyIntegerValueFormatter()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func generateRandomNumber(_ sender: Any) {
        if(txtMaxNumber.stringValue.count > 0) {
            lblText.stringValue = String(Int(arc4random_uniform(UInt32(txtMaxNumber.stringValue)!)))
        } else {
            lblText.stringValue = String(Int(arc4random_uniform(100)))
        }
    }
    
}

