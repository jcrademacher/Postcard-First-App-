//
//  ViewController.swift
//  Postcard
//
//  Created by Jack Rademacher on 7/13/15.
//  Copyright (c) 2015 Jack Rademacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // change
        nameLabel.hidden = false
        messageLabel.hidden = false
        nameLabel.text = enterName.text
        messageLabel.text = enterMessage.text
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        enterMessage.text = ""
        enterName.text = ""
        enterMessage.resignFirstResponder()
        enterName.resignFirstResponder()
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

