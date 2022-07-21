//
//  UIViewController+Extension.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/21.
//

import UIKit


extension UIViewController {
    
    func presentAlert(message: String) {
        let alertController = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    
}
