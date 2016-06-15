//
//  Album.swift
//  G Eazy Playlist
//
//  Created by Mamadou Kaba on 5/25/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import Foundation

public struct AlbumKeys {
    
    static let title = "title"
    static let description = "description"
    static let coverImageName = "coverImageName"
    static let songs = "songs"
}

class Album {
    
    var title : String?
    var description: String?
    var coverImageName: String?
    var songs: [String]?
    
    init(index: Int) {
        if index >= 0 && index < GEazysLibrary().albums.count {
            let album = GEazysLibrary().albums[index]
            
            title = album[AlbumKeys.title] as? String
            description = album[AlbumKeys.description] as? String
            coverImageName = album[AlbumKeys.coverImageName] as? String
            songs = album[AlbumKeys.songs] as? [String]
        }
    }
}