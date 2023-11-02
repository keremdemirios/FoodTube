//
//  MainWordsCollectionViewCell.swift
//  FoodTube
//
//  Created by Kerem Demir on 31.10.2023.
//

import UIKit

class MainWordsCollectionViewCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainWordsCollectionViewCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainWordsCollectionViewCell", bundle: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    func configure(){
        print("Main Words Collection View Cell gordu.")
    }

}
