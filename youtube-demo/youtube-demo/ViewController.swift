//
//  ViewController.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 23/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let  model = VideoModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        
    }


}

