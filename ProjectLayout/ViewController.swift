//
//  ViewController.swift
//  ProjectLayout
//
//  Created by OsiPc on 21.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login() {
        if email != nil {
            var Emaill = email.text
            var Passwordd = password.text}
            else { return }
        
        print("email bilgisi" , email)
        print("Password bilgisi" , password)
    
    }
    
    @IBAction func register(_ sender: Any) {
    }
    
    
    @IBAction func forgotForPassword(_ sender: Any) {
    }
}

