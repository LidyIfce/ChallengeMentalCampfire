//
//  PraticarViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 14/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class PraticarViewController: UIViewController {
   
    @IBOutlet var collectionView: UICollectionView!
    
    let atividades = Atividade.mockPraticar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(CollectionViewCell.xibForCollection(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }

}

extension PraticarViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return atividades.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell else{
            fatalError("Wrong identifier")
        }
        cell.imagem.image = UIImage(named: atividades[indexPath.row].imagemName)
        cell.titulo.text = atividades[indexPath.row].titulo
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if indexPath.row == 0 {
            self.performSegue(withIdentifier: "RespiracaoSegue", sender: self)
            
        }
        else if indexPath.row == 1{
            self.performSegue(withIdentifier: "MeditacaoSegue", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "DicasSegue", sender: self)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    
    
    
}



