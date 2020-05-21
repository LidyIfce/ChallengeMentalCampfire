//
//  DicasModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation

struct Dica{
    let titulo:String
    let descricao:String
}

extension Dica{
    static func mockDicas() -> [Dica]{
        var dicas = [Dica]()
        
        dicas.append(Dica(titulo:"Tente por apenas 2 minutos", descricao: "Comece com apenas 2 minutos durante uma semana. Vá aumentando dois minutos gradativamente. Ao aumentar apenas um pouco por vez, você estará meditando 10 minutos por dia, o que é incrível!" ))
        
        dicas.append(Dica(titulo: "Não se prenda, apenas faça.", descricao: "Não se preocupe em onde ou como sentar, isso não é importante para começar. Comece apenas sentando em um local confortável. Pode ser um sofá, cama ou no chão. Sente e   só por dois minutos no início, faça."))
             
        dicas.append(Dica(titulo: "Desenvolva uma atitude afetuosa", descricao: "Quando você perceber pensamentos e sentimentos surgindo durante a meditação, olhe para eles com uma atitude amigável, não intrusos ou inimigos. Eles são parte de você. Seja amigável e não rude."))
              
        dicas.append(Dica(titulo:  "Construa um hábito", descricao:  "Quando sentimos a necessidade de fazer muitas outras coisas antes de meditar, na verdade é apenas uma tática de atraso, encontrando uma desculpa para não meditar. Construir um bom hábito de meditação requer esforço e consistência."))
          
        
        return dicas
    }
}
