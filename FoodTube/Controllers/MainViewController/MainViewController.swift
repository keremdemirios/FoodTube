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
    @IBOutlet weak var wordsView: UIView!
    
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
        
        wordsView.addBorder(color: .systemGray, width: 1)
        wordsView.round()
        
    }
    
    // MARK : Functions
    
    // MARK : Actions

}
