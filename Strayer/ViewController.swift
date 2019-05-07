//
//  ViewController.swift
//  Strayer
//
//  Created by dhanalakshmi on 04/05/19.
//  Copyright © 2019 edu.strayer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func submit(_ sender: Any) {
        if (usernameTxt.text == "strayer" && passwordTxt.text == "strayer123") {
        let alert = UIAlertController.init(title: "Login", message: "Logged in successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        print("Hello world")
    }


}

