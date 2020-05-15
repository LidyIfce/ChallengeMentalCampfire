//
//  VideoViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController{

  
    @IBOutlet weak var collectionView: UICollectionView!
    
   
    let videos = Video.mockVideo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
                     
        collectionView.register(VideoCollectionViewCell.xibForCollection(), forCellWithReuseIdentifier: VideoCollectionViewCell.identifier)
        
        
    }


}

extension VideoViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VideoCollectionViewCell.identifier, for: indexPath) as? VideoCollectionViewCell else{
            fatalError("Wrong identifier")
        }
      
        cell.descricao.text = videos[indexPath.row].descricao
        
        let videoUrl = URL(string: "https://www.youtube.com/embed/\(videos[indexPath.row].url)")
        let requestVideo = URLRequest(url: videoUrl!)
        cell.webView.load(requestVideo)
        
       
        return cell
    }
    
    
  
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        return CGSize(width: view.frame.width, height: 250)
    }
    
    
}
