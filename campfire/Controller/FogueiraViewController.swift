//
//  FogueiraViewController.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit
import AVKit
class FogueiraViewController: UIViewController {

    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var frase: UILabel!
    
    private var fogueiraModel = FogueiraModel()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if let imageName = UIImage(named: fogueiraModel.imageName){
            self.imagem.image = imageName
        }
        self.frase.text = fogueiraModel.frase
        
        if(fogueiraModel.checkAudio()){
            fogueiraModel.Player().play()
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        
        if(fogueiraModel.Player().isPlaying){
            fogueiraModel.Player().play()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(fogueiraModel.checkAudio()){
            fogueiraModel.Player().play()
        }
    }
   
   
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
