//
//  MainViewController+CollectionView.swift
//  FoodTube
//
//  Created by Kerem Demir on 24.10.2023.
//

import Foundation
import UIKit

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainWordsCell.identifier, for: indexPath) as? MainWordsCell else {
            return UICollectionViewCell()
        }
        
        cell.wordsLabel.text = "KEREM"
        return cell
    }
    
    func setupCollectionView(){
        wordsCollectionView.delegate = self
        wordsCollectionView.dataSource = self
        
        wordsCollectionView.backgroundColor = .clear
        registerCells()
    }
    
    func registerCells(){
        wordsCollectionView.register(MainWordsCell.register(), forCellWithReuseIdentifier: MainWordsCell.identifier)
    }
    
    func reloadCollectionView() {
        DispatchQueue.main.async {
            self.wordsCollectionView.reloadData()
        }
    }
}
