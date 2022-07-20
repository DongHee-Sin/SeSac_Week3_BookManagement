//
//  BookInfoCollectionViewCell.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/20.
//

import UIKit
import Kingfisher

class BookInfoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookRateLabel: UILabel!
    
    
    
    func ConfigureCell(data: BookInfo) {
        let imageURL = URL(string: data.imageURL)
        bookImageView.kf.setImage(with: imageURL)
        bookImageView.contentMode = .scaleToFill
        bookImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bookImageView.layer.cornerRadius = bookImageView.frame.height / 20
        
        cellBackgroundView.backgroundColor = data.backgroundColor
        cellBackgroundView.layer.cornerRadius = cellBackgroundView.frame.height / 10
        
        bookTitleLabel.text = data.title
                
        bookRateLabel.text = "\(data.rate)"
        
        bookTitleLabel.setBookTitleFont()
        bookRateLabel.setBookRateFont()
    }
    
}
