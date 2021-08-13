//
//  TrackTableViewCell.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/22/21.
//

import UIKit

class TrackTableViewCell: UITableViewCell {

    var number: String = "" {
        didSet {
                numLabel.text = number
        }
    }
    
    var title: String = "" {
        didSet {
                titleLabel.text = title
        }
    }
    
    var length: String = "" {
        didSet {
                lengthLabel.text = length
        }
    }
    
    var composer: String = "" {
        didSet {
                composerLabel.text = composer
        }
    }
    @IBOutlet var numLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var lengthLabel: UILabel!
    @IBOutlet var composerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
