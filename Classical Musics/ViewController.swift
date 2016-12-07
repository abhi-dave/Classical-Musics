//
//  ViewController.swift
//  Classical Musics
//
//  Created by Abhishek Dave on 02/12/16.
//  Copyright © 2016 Abhishek Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview:UITableView!
    var mozart = [Mozart]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // URLs of Videos
        //
        
        let p1 = Mozart (imageUrl: "http://midiworld.com/px/mozart1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RDTaIhtYgic\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Eine Kleine Nachtmusik Movt 1")
        
        let p2 = Mozart (imageUrl: "http://midiworld.com/px/mozart1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-hJf4ZffkoI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Symphony #40 - Molto Allegro")
        
        let p3 = Mozart (imageUrl: "http://midiworld.com/px/mozart1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8OZCyp-LcGw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Marriage of Figaro")
        
        let p4 = Mozart (imageUrl: "http://midiworld.com/px/mozart1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Vwub-9dZLFU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Magic Flute")
        
        let p5 = Mozart (imageUrl: "http://midiworld.com/px/mozart1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oAHRp7jjaOg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Turkish March")
        
        let p6 = Mozart (imageUrl: "http://www.thefamouspeople.com/profiles/images/wolfgang-amadeus-mozart-4.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Zi8vJ_lMxQI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Requiem")
        
        let p7 = Mozart (imageUrl: "http://www.thefamouspeople.com/profiles/images/wolfgang-amadeus-mozart-4.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k1-TrAvp_xs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lactimosa")
        
        
        
        
        
        
        mozart.append(p1)
        mozart.append(p2)
        mozart.append(p3)
        mozart.append(p4)
        mozart.append(p5)
        mozart.append(p6)
        mozart.append(p7)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mozart = self.mozart[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: mozart)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? VideoVC{
            if let mozart = sender as? Mozart{
                destination.mozart = mozart
            }
        }
    }
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return mozart.count
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableview.dequeueReusableCell(withIdentifier: "SongsCell", for: indexPath) as? SongsCell {
        
            let mozart = self.mozart[indexPath.row]
            cell.UpdateUI(mozart: mozart)
            
            return cell
        }else{
            
            return UITableViewCell()
        }
    }


}

