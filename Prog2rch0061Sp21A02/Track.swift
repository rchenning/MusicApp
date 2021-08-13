//
//  Album.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/31/21.
//

import Foundation
import UIKit

public class Track: NSObject, NSCoding, NSCopying, Codable {
    private static let numberKey = "numberKey"
    private static let titleKey = "titleKey"
    private static let lengthKey = "lengthKey"
    private static let composerKey = "composerKey"
    var number: Int?
    var title: String?
    var length: String?
    var composer: String?
    
    public init(number: Int, title: String, composer: String, length: String) {
        self.number = number
        self.title = title
        self.composer = composer
        self.length = length
    }
    
    public required init?(coder aDecoder: NSCoder) {
        number = aDecoder.decodeObject(forKey: Track.numberKey) as? Int
        title = aDecoder.decodeObject(forKey: Track.titleKey) as? String
        length = aDecoder.decodeObject(forKey: Track.lengthKey) as? String
        composer = aDecoder.decodeObject(forKey: Track.composerKey) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        if let saveNumber = number {
            aCoder.encode(saveNumber, forKey: Track.numberKey)
        }
        
        if let saveTitle = title {
            aCoder.encode(saveTitle, forKey: Track.titleKey)
        }
        
        if let saveLength = length {
            aCoder.encode(saveLength, forKey: Track.lengthKey)
        }
        
        if let saveComposer = composer {
            aCoder.encode(saveComposer, forKey: Track.composerKey)
        }
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = Track(number: number!, title: title!, composer: composer!, length: length!)
        copy.number = number
        copy.title = title
        copy.length = length
        copy.composer = composer
        return copy
    }
    
    public func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "SavedTrack")
        }
    }
    
    public func retrieve() -> Track {
        let defaults = UserDefaults.standard
        if let savedTrack = defaults.object(forKey: "SavedTrack") as? Data {
            let decoder = JSONDecoder()
            if let loadedTrack = try? decoder.decode(Track.self, from: savedTrack) {
                return loadedTrack
            }
        }
        
        return self
    }
}
