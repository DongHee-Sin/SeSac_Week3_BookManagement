//
//  SearchViewController.swift
//  SeSac3BookManagement
//
//  Created by 신동희 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

        configureInitialUI()
    }

    
    
    // MARK: - Methods
    func configureInitialUI() {
        let xmarkButton = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(xButtonTapped))
        xmarkButton.tintColor = .label
        self.navigationItem.leftBarButtonItem = xmarkButton
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search ..."
        self.navigationItem.titleView = searchBar
        
    }
    
    
    @objc func xButtonTapped() {
        dismiss(animated: true)
    }
}
