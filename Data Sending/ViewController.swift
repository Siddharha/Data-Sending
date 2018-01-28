//
//  ViewController.swift
//  Data Sending
//
//  Created by Siddhartha Maji on 28/01/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

var message_text = ""
class ViewController: UIViewController {

 
    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnEnter(_ sender: Any) {
        message_text = tfInput.text!
        showMessage()
    }
    
    private func showMessage(){
        let alertController = UIAlertController(title: "Suggestion", message: "Wanna Send this Data to next activity?", preferredStyle: .alert)
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            self.performSegue(withIdentifier: "segue1", sender: nil)
        }
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

