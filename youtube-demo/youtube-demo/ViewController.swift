//
//  ViewController.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 23/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    let  model = VideoModel()
    var videos = [Video]()

    @IBOutlet weak var VideoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        
        VideoTableView.dataSource = self
        VideoTableView.delegate = self
        
    }
    
    // MARK:- Table View Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_CELL_ID, for: indexPath)
        
        return cell
    }
    
    


}

