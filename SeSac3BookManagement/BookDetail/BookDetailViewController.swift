//
//  BookDetailViewController.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/21.
//

import UIKit
import Kingfisher

class BookDetailViewController: UIViewController {

    // MARK: - Outlet
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    var bookInfo: BookInfo?
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureInitialUI()
    }

    
    
    // MARK: - Methods
    func configureInitialUI() {
        
        if let bookInfo = bookInfo {
            let imageURL = URL(string: bookInfo.imageURL)
            bookImageView.kf.setImage(with: imageURL)
            
            bookTitleLabel.text = bookInfo.title
            bookTitleLabel.setBookTitleFont()
            
            view.backgroundColor = bookInfo.backgroundColor
        }
    }
    
    
    @IBAction func webButtonTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "WebView", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as? WebViewController else {
            presentAlert(message: "ViewController 타입캐스팅 실패")
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
