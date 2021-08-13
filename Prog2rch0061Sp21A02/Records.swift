//
//  Records.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/31/21.
//

import Foundation
import UIKit

public class Records: NSObject, NSCoding, NSCopying, Codable {
    private static let albumsKey = "albumsKey"
    public var albums: [Album]? 
    
    init(albums: [Album]) {
        self.albums = albums
    }
    
    override public init() {
    }
    
    public required init?(coder aDecoder: NSCoder) {
        albums = aDecoder.decodeObject(forKey: Records.albumsKey) as? [Album]
    }
    
    public func encode(with aCoder: NSCoder) {
        if let saveAlbums = albums {
            aCoder.encode(saveAlbums, forKey: Records.albumsKey)
        }
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = Records(albums: albums!)
        if let albumsToCopy = albums {
            var newAlbums = Array<Album>()
            for album in albumsToCopy {
                newAlbums.append(album)
            }
            copy.albums = newAlbums
        }
        return copy
    }
    
    public func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "SavedAlbum")
        }
    }
    
    public func retrieve() -> Records {
        let defaults = UserDefaults.standard
        if let savedAlbum = defaults.object(forKey: "SavedAlbum") as? Data {
            let decoder = JSONDecoder()
            if let loadedAlbum = try? decoder.decode(Records.self, from: savedAlbum) {
                if !loadedAlbum.isEqual(nil) {
                    return loadedAlbum
                }
                
            }
        }
        
        return self
    }
}
