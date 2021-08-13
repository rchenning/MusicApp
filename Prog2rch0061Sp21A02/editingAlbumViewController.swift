//
//  editingViewController.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/23/21.
//

import UIKit

class editingAlbumViewController: UIViewController {

    @IBOutlet weak var albumName: UITextField!
    @IBOutlet weak var artistName: UITextField!
    @IBOutlet weak var yearName: UITextField!
    @IBOutlet weak var recordLabel: UITextField!
    @IBOutlet weak var thumbnailName: UITextField!
    var albumInput: String? = ""
    var artist: String? = ""
    var year: String? = ""
    var rLabel: String? = ""
    var thumbnail: String? = ""
    
    var albumIndexPath: Int = 0
    var trackIndexPath: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumName.text = albumInput
        artistName.text = artist
        yearName.text = year
        recordLabel.text = rLabel
        thumbnailName.text = thumbnail

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonOnPress(_ sender: Any) {
        if(adding){
            let newAlbum = Album(name: albumName.text!, artist: artistName.text!, year: yearName.text!, label: recordLabel.text!, tracks: [], thumbnail: thumbnailName.text!)
            records.albums!.insert(newAlbum, at: 0)
        }
        else {
            let oldAlbum = records.albums![albumIndexPath]
            let newAlbum = Album(name: albumName.text!, artist: artistName.text!, year: yearName.text!, label: recordLabel.text!, tracks: oldAlbum.tracks!, thumbnail: thumbnailName.text!)
            records.albums!.remove(at: albumIndexPath)
            records.albums!.insert(newAlbum, at: albumIndexPath)
        }
        records.save()
        albumName.text = ""
        artistName.text = ""
        yearName.text = ""
        recordLabel.text = ""
        thumbnailName.text = ""
    }
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

