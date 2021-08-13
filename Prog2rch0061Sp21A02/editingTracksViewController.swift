//
//  editingTracksViewController.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/31/21.
//

import UIKit

class editingTracksViewController: UIViewController {
    @IBOutlet weak var trackNumber: UITextField!
    @IBOutlet weak var titleName: UITextField!
    @IBOutlet weak var lengthName: UITextField!
    @IBOutlet weak var composerName: UITextField!
    
    var albumIndexPath: Int = 0
    var trackIndexPath: Int = 0

    var trackString: Int? = 1
    var titleString: String? = ""
    var length: String? = ""
    var composer: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackNumber.text = String(trackString!)
        titleName.text = titleString
        lengthName.text = length
        composerName.text = composer

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonOnPress(_ sender: Any) {
        trackString = Int(trackNumber.text!)
        if(adding){
            let newTrack = Track(number: trackString!, title: titleName.text!, composer: composerName.text!, length: lengthName.text!)
            records.albums![albumIndexPath].tracks!.insert(newTrack, at: trackString! - 1)
        }
        else {
            let newTrack = Track(number: trackString!, title: titleName.text!, composer: composerName.text!, length: lengthName.text!)
            records.albums![albumIndexPath].tracks!.remove(at: trackIndexPath)
            records.albums![albumIndexPath].tracks!.insert(newTrack, at: trackIndexPath)
        }
        records.save()
        trackNumber.text = ""
        titleName.text = ""
        lengthName.text = ""
        composerName.text = ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
