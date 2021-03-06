//
//  FogueiraModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation
import AVKit
class FogueiraModel{
    
    var frase:String{
        get {
            getDayFrase()
        }
    }
    let imageName:String = "fogueira"
    
    private var player = AVAudioPlayer()

    private let dayPhrase = ["\"A beleza começa no momento que você começa a ser você mesmo.\"",
          "\"Queda após queda, desafio após desafio eu me fortaleço e me torno mais resiliente.\"\n[Coco Chanel]",
          "\"A maior glória em viver não está em jamais cair, mas em nos levantar cada vez que caímos.\"\n[Nelson Mandela]",
          "\"A resiliência e o bom humor são duas ótimas maneiras de levar a vida. Seja flexível, sorria e espalhe amor!\"",
          "\"Calma, respira e continua com fé que essa resiliência acabará por dar frutos!\"",
          "\"Se faltar ânimo, não desista. Olhe para o céu e encontre as forças que precisa.\"",
          "\"Perante as tribulações mantenha a fé, resista, e um dia verá sua persistência ser recompensada com a vitória!\"",
          "\"Nem todas as tempestades vêm para atrapalhar a sua vida. Algumas vêm para limpar o seu caminho.\"",
          "\"Seja resiliente, acredite na sua força, no seu potencial, creia que é capaz e você será!\"",
          "\"No mar da vida a minha âncora é a minha fé!\"\n[Yla Fernandes]",
          "\"Não importa que você perca as batalhas, o que importa é como você cura suas feridas de guerra.\"",
          "\"Quando se machucar, lembre-se que ninguém alcança o sucesso sem carregar algumas cicatrizes.\""
    ]
     

    private func getDayFrase() ->String{
        let access = Int.random(in: 0 ... (dayPhrase.count - 1))
        return dayPhrase[access]
    }
    
    
    private func SetupPlayer(nome:String, formato:String) -> AVAudioPlayer{
          
           let sound = Bundle.main.path(forResource: nome, ofType: formato)
           do{
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
           } catch  {
                print(error)
               }
        
            player.volume = UserDefaults.standard.float(forKey: "changeVolume")
            return player
       }
       
        func Player() ->AVAudioPlayer{
           SetupPlayer(nome: "Fogueira", formato: "mp3")
       }
    
    
     func checkAudio() -> Bool {
        if UserDefaults.standard.bool(forKey: "activeSound") == true {
            return true
        } else {
            return false
        }
    }
        
}

