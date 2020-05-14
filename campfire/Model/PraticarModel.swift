//
//  PraticarModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 14/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation

struct Atividade{
    var titulo:String
    var imagemName: String
    
}

extension Atividade{
    
    static func mockPraticar() -> [Atividade]{
        var atividades = [Atividade]()
        
        atividades.append(Atividade(titulo: "Respiração", imagemName: "respiracao"))
        atividades.append(Atividade(titulo: "Meditação", imagemName: "meditacao"))
        atividades.append(Atividade(titulo: "Dicas", imagemName: "dicas"))
        
         return atividades
    }
   
}
