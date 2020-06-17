//
//  CacheManager.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 17/6/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

class CacheManager{
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url : String,_ data : Data? ){
        
        cache[url] = data
    }
    
    static func getVideoCache(_ url : String)-> Data?{
        
        return cache[url]
    }
    
}
