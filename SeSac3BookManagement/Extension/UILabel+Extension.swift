//
//  UILabel+Extension.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/20.
//

import UIKit

extension UILabel {
    
    func setBookTitleFont() {
        self.font = .systemFont(ofSize: 18, weight: .heavy)
        self.textColor = .systemBackground
    }
    
    func setBookRateFont() {
        self.font = .systemFont(ofSize: 12, weight: .regular)
        self.textColor = .systemBackground
    }
}
