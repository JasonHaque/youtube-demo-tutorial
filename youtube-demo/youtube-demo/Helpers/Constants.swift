//
//  Constants.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 27/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

struct Constants{
    
    static var API_KEY = "AIzaSyBXEe-Qvds_GVWHnz2zQBfoNhSwT5AG_mo"
    static var PLAYLIST_ID = "UUXuqSBlHAE6Xw-yeJA0Tunw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEO_CELL_ID = "VideoCell"
}
