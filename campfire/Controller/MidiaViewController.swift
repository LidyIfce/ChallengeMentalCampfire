//
//  MidiaViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class MidiaViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let midia = Midia.mockMidia()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
               
        collectionView.register(CollectionViewCell.xibForCollection(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    


}
extension MidiaViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell else{
            fatalError("Wrong identifier")
        }
        cell.imagem.image = UIImage(named: midia[indexPath.row].imagemName)
        cell.titulo.text = midia[indexPath.row].titulo
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
           if indexPath.row == 0 {
               self.performSegue(withIdentifier: "VideoSegue", sender: self)
               
           }
           else{
               self.performSegue(withIdentifier: "MusicaSegue", sender: self)
           }
       }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    
    
}
