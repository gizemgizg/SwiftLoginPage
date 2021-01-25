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
    
    let alertService = AlertService()
    let networkingService = NetworkingService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login() {
        
       /* guard
            let emaill = email.text,
            let passwordd = password.text
            else { return }
        
    
    */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let mainAppVC = segue.destination as? ViewController, let user = sender as? User{
            mainAppVC.userActivity = userActivity
        }
    }
    
    @IBAction func register(_ sender: Any) {
    }
    
    
    @IBAction func forgotForPassword(_ sender: Any) {
    }
}

