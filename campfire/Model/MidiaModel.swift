//
//  MidiaModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation
struct Midia{
    var titulo:String
    var imagemName: String
    
}

extension Midia{
    
    static func mockMidia() -> [Midia]{
        var midias = [Midia]()
        
        midias.append(Midia(titulo: "Vídeos", imagemName: "video"))
        midias.append(Midia(titulo: "Músicas", imagemName: "musica"))
       
         return midias
    }
   
}
