//
//  ViewController.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 23/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate ,ModelDelegate{
    
    
    //MARK: - IB outlets
    
    @IBOutlet weak var VideoTableView: UITableView!
    
    
    let  model = VideoModel()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        VideoTableView.dataSource = self
        VideoTableView.delegate = self
        
        model.delegate = self
        model.getVideos()
        
    }
    
    //MARK: - model delegate methods
    
    func videosFetched(_ videos: [Video]) {
        
        self.videos = videos
        
        VideoTableView.reloadData()
    }
    
    // MARK:- Table View Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_CELL_ID, for: indexPath) as! VideoTableViewCell
        
        let video = videos[indexPath.row]
        
        cell.setCell(video)
        
        return cell
    }
    
    


}

