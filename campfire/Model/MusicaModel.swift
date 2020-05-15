//
//  MusicaModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation

struct Musica{
    var musicaName:String
    var imagemName:String
    
}

extension Musica{
    static func mockMusica() -> [Musica]{
        var musicas = [Musica]()
        
        for i in 1...5{
        musicas.append(Musica(musicaName: "musica0\(i)", imagemName: "musica0\(i)"))
        }
        return musicas
    }
    
}
   
