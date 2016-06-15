//
//  PlaylistViewController.swift
//  G Eazy Playlist
//
//  Created by Mamadou Kaba on 5/23/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {

    @IBOutlet weak var coverImage0: UIImageView!
    @IBOutlet weak var coverImage1: UIImageView!
    @IBOutlet weak var coverImage2: UIImageView!
    @IBOutlet weak var coverImage3: UIImageView!
    @IBOutlet weak var coverImage4: UIImageView!
    @IBOutlet weak var coverImage5: UIImageView!
    @IBOutlet weak var coverImage6: UIImageView!
    @IBOutlet weak var coverImage7: UIImageView!
    @IBOutlet weak var coverImage8: UIImageView!
    @IBOutlet weak var coverImage9: UIImageView!
    @IBOutlet weak var coverImage10: UIImageView!
    
    
    var coverImages: [UIImageView]!
    
    func updateUI() {
        for i in 0..<coverImages.count {
            var coverImage = coverImages[i]
            
            let album = Album(index: i)
            
            coverImage.image = UIImage(named: album.coverImageName!)
        }
    }
    
    override func viewDidLoad() {
        coverImages = [coverImage0, coverImage1, coverImage2, coverImage3, coverImage4, coverImage5, coverImage6, coverImage7, coverImage8, coverImage9, coverImage10]
        
        updateUI()
    }
    
    @IBAction func showAlbum(sender: UITapGestureRecognizer) {
        performSegueWithIdentifier("Show Album", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
        
        switch identifier {
        case "Show Album":
            let albumViewController = segue.destinationViewController as! AlbumViewController
            let albumImageView = sender?.view as! UIImageView
            if let index = coverImages.indexOf(albumImageView) {
                let album = Album(index: index)
                albumViewController.album = album
            }
        case "My Favorites":
            let myFavoritesViewController = segue.destinationViewController as! AlbumViewController
            let randomIndex = Int(arc4random()) % 5
            let album = Album(index: randomIndex)
            myFavoritesViewController.album = album
        default:
            break
        }
        }
    }
    
}
