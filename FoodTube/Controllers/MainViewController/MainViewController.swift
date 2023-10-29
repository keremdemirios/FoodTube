//
//  MainViewController.swift
//  FoodTube
//
//  Created by Kerem Demir on 24.10.2023.
//

import UIKit

class MainViewController: UIViewController {

    
    // MARK : UI Elements
    @IBOutlet weak var wordsTextField: UITextField!
    @IBOutlet weak var addWordsButton: UIButton!
//    @IBOutlet weak var wordsView: UIView!
    @IBOutlet weak var searchButton: UIButton!
//    @IBOutlet weak var wordsCollectionView: UICollectionView!
    @IBOutlet weak var wordsCollectionView: UICollectionView!
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    // MARK : Configure
    private func configure(){
        wordsTextField.addBorder(color: .systemGray, width: 1)
        wordsTextField.round()
        
        addWordsButton.addBorder(color: .systemBlue, width: 1)
        addWordsButton.round()
        
        wordsCollectionView.addBorder(color: .systemGray, width: 1)
        wordsCollectionView.round()
        wordsCollectionView.backgroundColor = .clear
        
        searchButton.round()
    }
    
    // MARK : Functions
    
    // MARK : Actions
    @IBAction func searchButtonActions(_ sender: Any) {
        let vc = VideosViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
        print("working")
        wordsTextField.text = nil
    }
    
}
