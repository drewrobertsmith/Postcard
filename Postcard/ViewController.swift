//
//  ViewController.swift
//  Postcard
//
//  Created by Drew Smith on 9/13/14.
//  Copyright (c) 2014 Drew Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        // Adding a comment here to test commits
        
        //code for "Enter a Message"
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        //code for "Enter Name"
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        nameLabel.textColor = UIColor.blueColor()
        
    }

}

