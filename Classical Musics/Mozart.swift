//
//  Mozart.swift
//  Classical Musics
//
//  Created by Abhishek Dave on 02/12/16.
//  Copyright © 2016 Abhishek Dave. All rights reserved.
//

import Foundation


class Mozart  {
    private var _imageUrl:String!
    private var _videoUrl:String!
    private var _videoTitle:String!
    
    var imageUrl: String{
        return _imageUrl
    }
    var videoUrl: String{
        return _videoUrl
    }
    var videotitle: String{
        return _videoTitle
    }
    
    
    init(imageUrl:String,videoUrl:String,videoTitle:String){
        
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
