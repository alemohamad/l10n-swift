//
//  ViewController.swift
//  L10N
//
//  Created by Ale Mohamad on 11/30/16.
//  Copyright © 2016 Ale Mohamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sayHelloButton: UIButton!
    @IBOutlet weak var flagImage: UIImageView!
    
    // MARK: - Variables
    var alertMessage = ""
    var actionButtonLabel = ""
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagImage.image = UIImage(named: "flag")
    }
    
    // MARK: - Interactions
    @IBAction func sayHelloTapped(_ sender: UIButton) {
        if let username = nameTextField.text {
            if username.isEmpty {
                alertMessage = "So you don't want to be greeted by this app? Don't you like us?"
                actionButtonLabel = "Oh, no!"
            }
            else {
                alertMessage = "Hello \(username)!\nThanks for using our app. :D"
                actionButtonLabel = "OK"
            }
        }
        
        showAlertMessage()
    }
    
    // MARK: - Functions
    func showAlertMessage() {
        let alertTitle = "Greetings!"
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: actionButtonLabel, style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
}

// MARK: - Text Field Delegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
    
}

