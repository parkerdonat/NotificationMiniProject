//
//  SenderViewController.swift
//  NotificationMiniProject2
//
//  Created by Parker Donat on 4/11/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import UIKit

class SenderViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var senderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func sendButtonTapped(sender: AnyObject) {
        guard let text = senderTextField.text else {return}
        
        NSNotificationCenter.defaultCenter().postNotificationName("sendButtonTapped", object: nil, userInfo: ["text": text])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
