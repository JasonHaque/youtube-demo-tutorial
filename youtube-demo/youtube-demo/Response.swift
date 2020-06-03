//
//  Response.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 3/6/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

struct Response:Decodable{
    
    var items : [Video]?
    
    enum CodingKeys:String,CodingKey{
        case items
    }
    
    init(from decoder:Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
