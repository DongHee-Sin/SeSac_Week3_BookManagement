//
//  BookInfoCollectionViewController.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/20.
//

import UIKit

class BookInfoCollectionViewController: UICollectionViewController {

    // MARK: - Propertys
    var bookManager = BookInfoManager()
    
    
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Methods
    func configureCollectionViewLayout() {
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookManager.bookCount
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookInfoCollectionViewCell", for: indexPath) as! BookInfoCollectionViewCell
        
        guard let bookInfo = bookManager.getBookInfo(at: indexPath.row) else { return UICollectionViewCell() }
        cell.ConfigureCell(data: bookInfo)
        
        return cell
    }
}
