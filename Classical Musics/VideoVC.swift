//
//  VideoVC.swift
//  Classical Musics
//
//  Created by Abhishek Dave on 02/12/16.
//  Copyright © 2016 Abhishek Dave. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var label: UILabel!
    
    private var _mozart: Mozart!
    
    var mozart:Mozart {
        get{
            return _mozart
        }
        set{
            _mozart = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = mozart.videotitle
        webview.loadHTMLString(mozart.videoUrl, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
