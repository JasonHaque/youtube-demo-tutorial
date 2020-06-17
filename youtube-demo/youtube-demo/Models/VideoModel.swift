//
//  VideoModel.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 27/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos : [Video])
}

class VideoModel{
    
    var delegate : ModelDelegate?
    
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
            
            do{
                //parse response and create video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        self.delegate?.videosFetched(response.items!)
                    }
                    
                }
                dump(response)
                
                
            }
            catch{
                
            }
            
        }
        
        // kick off data task
        
        task.resume()
    }
}
