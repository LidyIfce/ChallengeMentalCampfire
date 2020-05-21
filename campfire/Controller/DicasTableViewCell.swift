//
//  DicasTableViewCell.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 20/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class DicasTableViewCell: UITableViewCell {
    
    @IBOutlet weak var wrapperView: UIView!
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    
    @IBOutlet weak var labelText: UILabel!
    
    static let nibName = "DicasTableViewCell"
    static let identifier = "DicasTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
         self.wrapperView.layer.cornerRadius = 10
        self.wrapperView.layer.masksToBounds = true
        
        imagem.image = UIImage(named: "pin")
        imagem.contentMode = UIView.ContentMode.scaleAspectFill
        
    }

   
    static func xibForTable() -> UINib{
           return UINib(nibName: nibName, bundle: nil)
       }

}
