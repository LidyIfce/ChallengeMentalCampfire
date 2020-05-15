//
//  VideoCollectionViewCell.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 14/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit
import WebKit



class VideoCollectionViewCell: UICollectionViewCell{
   
    
    @IBOutlet weak var wrapperView: UIView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var descricao: UILabel!
    
  
    
    static let nibName = "VideoCollectionCell"
    static let identifier = "VideoCollectionCell"
       
       override func layoutSubviews() {
           super.layoutSubviews()
            self.webView.layer.cornerRadius = 10
          self.webView.layer.masksToBounds = true
           self.wrapperView.layer.cornerRadius = 10
           self.wrapperView.layer.masksToBounds = true
 
       }
       
       
       static func xibForCollection() -> UINib{
           return UINib(nibName: nibName, bundle: nil)
       }
    
//    func getVideo(videoCode:String){
//           let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
//           webView.load(URLRequest(url: url!))
//       }
       

    
}



