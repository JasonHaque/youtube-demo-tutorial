//
//  VideoModel.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 27/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

class VideoModel{
    
    func getVideos(){
        
        // create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        //generate URLSession Object
        
        let session = URLSession.shared
        
        //get a data task from URLSeassion object
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil {
                return
            }
            
            //parse response and create video objects
            print("request successful")
            print(data!)
        }
        
        // kick off data task
        
        task.resume()
    }
}
