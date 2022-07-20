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

        settingUI()
    }

    
    
    // MARK: - Methods
    func settingUI() {
        collectionView.showsVerticalScrollIndicator = false
        
        configureCollectionViewLayout()
    }
    
    
    func configureCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        
        let itemSpacing: CGFloat = 12
        let itemWidth: CGFloat = UIScreen.main.bounds.width - (itemSpacing * 3)
        
        layout.itemSize = CGSize(width: itemWidth / 2, height: itemWidth / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: itemSpacing, left: itemSpacing, bottom: itemSpacing, right: itemSpacing)
        layout.minimumLineSpacing = itemSpacing
        layout.minimumInteritemSpacing = itemSpacing
        
        collectionView.collectionViewLayout = layout
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
