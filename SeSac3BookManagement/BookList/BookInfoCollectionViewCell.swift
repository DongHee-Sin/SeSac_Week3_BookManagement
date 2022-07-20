//
//  BookInfoCollectionViewCell.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/20.
//

import UIKit

class BookInfoCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlet
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookRateLabel: UILabel!
    
    func ConfigureCell() {
        cellBackgroundView.backgroundColor = .lightGray
        cellBackgroundView.layer.cornerRadius = cellBackgroundView.frame.height / 8
    }
    
}
