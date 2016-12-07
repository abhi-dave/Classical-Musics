//
//  SongsCell.swift
//  Classical Musics
//
//  Created by Abhishek Dave on 02/12/16.
//  Copyright © 2016 Abhishek Dave. All rights reserved.
//

import UIKit

class SongsCell: UITableViewCell {
    
    @IBOutlet weak var previewPic : UIImageView!
    @IBOutlet weak var VideoTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func UpdateUI(mozart: Mozart){
            VideoTitle.text = mozart.videotitle
            let url = URL(string: mozart.imageUrl)!
        
        DispatchQueue.global().async{
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync{
                    self.previewPic.image = UIImage(data: data)
                }
            } catch{
            
            }
        
        }
    }
}
