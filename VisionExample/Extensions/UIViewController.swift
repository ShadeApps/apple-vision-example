//
//  UIViewController.swift
//  VisionExample
//
//  Created by Sergey Grischyov on 01.02.2021.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String) {
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction.init(title: "OK", style: .cancel))
        
        present(alertController, animated: true)
        
    }
}
