//
//  ViewController.swift
//  PostcardV2
//
//  Created by David Gallegos Sánchez on 1/9/16.
//  Copyright © 2016 David Gallegos Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
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
        // Code will evaluate when ew the press th button
        // Adding a Comment here to test commit
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        //Escondemos el teclado despues de pulsar el botón
        enterMessageTextField.resignFirstResponder()
        //Cambiamos el texto del botón al pulsarlo
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }


}

