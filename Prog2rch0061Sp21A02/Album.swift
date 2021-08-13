//
//  Album.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/31/21.
//

import Foundation
import UIKit

public class Album: NSObject, NSCoding, NSCopying, Codable {
    private static let albumKey = "albumKey"
    private static let artistKey = "artistKey"
    private static let yearKey = "yearKey"
    private static let labelKey = "labelKey"
    private static let tracksKey = "tracksKey"
    private static let thumbnailKey = "thumbnailKey"
    var name: String?
    var artist: String?
    var year: String?
    var label: String?
    var tracks: [Track]?
    var thumbnail: String?
    
    init(name: String, artist: String, year: String, label: String, tracks: [Track], thumbnail: String) {
        self.name = name
        self.artist = artist
        self.year = year
        self.label = label
        self.tracks = tracks
        self.thumbnail = thumbnail
    }
    
    public required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: Album.albumKey) as? String
        artist = aDecoder.decodeObject(forKey: Album.artistKey) as? String
        year = aDecoder.decodeObject(forKey: Album.yearKey) as? String
        label = aDecoder.decodeObject(forKey: Album.labelKey) as? String
        tracks = (aDecoder.decodeObject(forKey: Album.tracksKey) as? [Track])!
        thumbnail = aDecoder.decodeObject(forKey: Album.thumbnailKey) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        if let saveName = name {
            aCoder.encode(saveName, forKey: Album.albumKey)
        }
        
        if let saveArtist = artist {
            aCoder.encode(saveArtist, forKey: Album.artistKey)
        }
        
        if let saveYear = year {
            aCoder.encode(saveYear, forKey: Album.yearKey)
        }
        
        if let saveLabel = label {
            aCoder.encode(saveLabel, forKey: Album.labelKey)
        }
        
        if let saveTracks = tracks {
            aCoder.encode(saveTracks, forKey: Album.tracksKey)
        }
        
        if let saveThumbnail = thumbnail {
            aCoder.encode(saveThumbnail, forKey: Album.thumbnailKey)
        }
        
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        var newTracks = Array<Track>()
        if let tracksToCopy = tracks {
            for track in tracksToCopy {
                newTracks.append(track)
            }
        }
        let copy = Album(name: name!, artist: artist!, year: year!, label: label!, tracks: newTracks, thumbnail: thumbnail!)
        return copy
    }
    
    public func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "SavedAlbum")
        }
    }
    
    public func retrieve() -> Album {
        let defaults = UserDefaults.standard
        if let savedAlbum = defaults.object(forKey: "SavedAlbum") as? Data {
            let decoder = JSONDecoder()
            if let loadedAlbum = try? decoder.decode(Album.self, from: savedAlbum) {
                return loadedAlbum
            }
        }
        
        return self
    }
}
