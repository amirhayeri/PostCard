//
//  ViewController.swift
//  Postcard
//
//  Created by Amir on 10/3/14.
//  Copyright (c) 2014 BioCon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendCardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendCardButtonPressed(sender: UIButton) {
        //code will evaluate when button is pressed
        
         nameLabel.hidden = false
         nameLabel.text = enterNameTextField.text
         nameLabel.textColor = UIColor.blueColor()
         enterNameTextField.text=""
         enterNameTextField.resignFirstResponder()
        
         messageLabel.hidden=false
         messageLabel.text = enterMessageTextField.text
         messageLabel.textColor = UIColor.redColor()
         enterMessageTextField.text = ""
         enterMessageTextField.resignFirstResponder()
        
        sendCardButton.setTitle ("Mail Sent", forState: UIControlState.Normal)
    }

}

