//
//  MainWordsCell.swift
//  FoodTube
//
//  Created by Kerem Demir on 24.10.2023.
//

import UIKit

class MainWordsCell: UICollectionViewCell {

    public static var identifier: String {
        get {
            return "MainWordsCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainWordsCell", bundle: nil)
    }
    
    @IBOutlet weak var wordsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    func configure(){
        wordsLabel.text = "kerem 3"
        print("keremmmmmm")
    }
}
