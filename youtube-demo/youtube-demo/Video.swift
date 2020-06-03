//
//  Video.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 27/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation


struct Video:Decodable{
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = ""
    
    enum CodingKeys : String,CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
    }
    init(from decoder:Decoder)throws{
        
        
    }
}
