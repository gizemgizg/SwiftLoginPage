//
//  AlertService.swift
//  ProjectLayout
//
//  Created by OsiPc on 22.01.2021.
//

import UIKit

class AlertService{
    
    func alert(message: String) -> UIAlertController{
    
    let alert = UIAlertController(title:nil, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        alert.addAction(action)
        return alert
    
 }
}
