//
//  DetailViewController.swift
//  youtube-demo
//
//  Created by Sanviraj Zahin Haque on 24/6/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textView: UITextView!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //clear the fields
        
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        //check for video
        guard video != nil else{
            return
        }
        
        //create embed url
        
        let embedURLString = Constants.YT_EMBED_URL + video!.videoId
        
        //load into webview
        let embedURL = URL(string: embedURLString)
        
        let request = URLRequest(url: embedURL!)
        
        webView.load(request)
        
        //set title
        
        titleLabel.text = video!.title
        
        //set date
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        
        self.dateLabel.text = df.string(from: video!.published)
        
        
        
        //set description
        
        textView.text = video!.description
    }
    

    

}
