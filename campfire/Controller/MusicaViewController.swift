//
//  MusicaViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class MusicaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let musicsInfo = Musica.mockMusica()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
    }
    
}

extension MusicaViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicsInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MusicaTableViewCell.identifier, for: indexPath) as! MusicaTableViewCell
        
       
        cell.imagem.image = UIImage(named: musicsInfo[indexPath.row].imagemName)
        cell.setupPlayer(musicaName: musicsInfo[indexPath.row].musicaName)
        cell.viewDidAppear()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150)
    }
}
