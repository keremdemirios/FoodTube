//
//  MainViewController+CollectionView.swift
//  FoodTube
//
//  Created by Kerem Demir on 24.10.2023.
//

import Foundation
import UIKit

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func setupCollectionView(){
        wordsCollectionView.delegate = self
        wordsCollectionView.dataSource = self
        
        registerCells()
        print("KERME 55")
    }
    
    func registerCells(){
        wordsCollectionView.register(MainWordsCollectionViewCell.register(), forCellWithReuseIdentifier: MainWordsCollectionViewCell.identifier)
    }
    
    func reloadCollectionView(){
        DispatchQueue.main.async {
            self.wordsCollectionView.reloadData()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainWordsCollectionViewCell.identifier, for: indexPath) as? MainWordsCollectionViewCell else {
            print("KEREM DEMIR")
            return UICollectionViewCell()
        }
        print("Working")
        cell.label.text = "KEREM 2"
        cell.backgroundColor = .red
        return cell
    }
}
