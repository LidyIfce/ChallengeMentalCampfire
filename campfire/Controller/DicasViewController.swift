//
//  DicasViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class DicasViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dicas = Dica.mockDicas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        
       
        
        tableView.register(DicasTableViewCell.xibForTable(), forCellReuseIdentifier: DicasTableViewCell.identifier)
    }


}

extension DicasViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dicas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DicasTableViewCell.identifier, for: indexPath) as? DicasTableViewCell else{
                   fatalError("Wrong identifier")
               }
       
        cell.backgroundColor = UIColor.init(red: 243.0/255.0, green: 232.0/255.0, blue: 203.0/255.0, alpha: 1)
        
        cell.labelTitulo.text = dicas[indexPath.row].titulo
        cell.labelText.text = dicas[indexPath.row].descricao
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return CGFloat(240)
       }
    
    
}
