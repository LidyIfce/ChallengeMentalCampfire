//
//  CollectionViewCell.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 14/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
        
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var wrapperView: UIView!
    static let nibName = "CollectionCell"
    static let identifier = "CollectionCell"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.wrapperView.layer.cornerRadius = 10
        self.wrapperView.layer.masksToBounds = true
    }
    
 
    
    static func xibForCollection() -> UINib{
        return UINib(nibName: nibName, bundle: nil)
    }
}
