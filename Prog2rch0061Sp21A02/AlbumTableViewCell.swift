//
//  AlbumTableViewCell.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/22/21.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    var album: String = "" {
        didSet {
            if (album != oldValue) {
                albumLabel.text = album
            }
        }
    }
    
    var artist: String = "" {
        didSet {
            if (artist != oldValue) {
                artistLabel.text = artist
            }
        }
    }
    
    var year: String = "" {
        didSet {
            if (year != oldValue) {
                yearLabel.text = year
            }
        }
    }
    
    var recordLabel: String = "" {
        didSet {
            if (recordLabel != oldValue) {
                recordLabelLabel.text = recordLabel
            }
        }
    }
    var albumImage: UIImage? {
        didSet {
            if (albumImage != oldValue) {
                albumArt.image = albumImage
            }
            
        }
    }

    @IBOutlet var albumLabel: UILabel!
    @IBOutlet var artistLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var recordLabelLabel: UILabel!
    @IBOutlet var albumArt: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
