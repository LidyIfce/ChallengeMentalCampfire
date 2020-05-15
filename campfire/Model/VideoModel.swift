//
//  VideoModel.swift
//  campfire
//
//  Created by Lidiane Gomes Barbosa on 13/05/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import Foundation

struct Video{
    var url:String
    var descricao: String
    
}

extension Video{
    static func mockVideo() -> [Video]{
        var videos = [Video]()
        videos.append(Video(url: "6C81xjBWBRQ", descricao: "Relaxamento guiado - Luz Azul"))
        videos.append(Video(url: "GgcfEkdGf1I", descricao: "Controle sua ansiedade"))
        videos.append(Video(url: "vmt2Wcc9-Is", descricao: "Para meditar e relaxar"))
        videos.append(Video(url: "xoTwJrPgVo4", descricao: "RESPIRE FUNDO (exercício de respiração e relaxamento)"))
        videos.append(Video(url: "5qHXtfSDoJM", descricao: "Meditação para relaxar"))
    
        return videos
    }
}
