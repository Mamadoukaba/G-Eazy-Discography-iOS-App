//
//  AlbumViewController.swift
//  G Eazy Playlist
//
//  Created by Mamadou Kaba on 5/25/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    var album: Album?
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    func updateUI() {
        
        let albumName = "\((album?.coverImageName)!)"
        backgroundImageView.image = UIImage(named: albumName)
        albumCoverImageView.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoinedByString(", ")
          descriptionTextView.text = "\((album?.description)!) \n\nThe songs in the album are: \(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Album"
        updateUI()
    }
    
}
