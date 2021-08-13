//
//  AlbumInfoViewController.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/19/21.
//

import UIKit

class AlbumInfoViewController: UITableViewController {
    
    var albumLabel: String?
    var artistLabel: String?
    var yearLabel: String?
    var recordLabelLabel: String?
    var image: UIImage?
    var selectedIndexPath: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        if (tableView.isEditing) {
            let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
            navigationItem.leftBarButtonItem = addButton
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = UINib(nibName: "albumTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "cellIdentifier2")


        let xib2 = UINib(nibName: "TrackTableViewCell", bundle: nil)
        tableView.register(xib2, forCellReuseIdentifier: "cellIdentifier3")
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        navigationItem.leftItemsSupplementBackButton = true
        navigationItem.leftBarButtonItem = addButton
        
        navigationItem.rightBarButtonItem = editButtonItem
        tableView.allowsSelectionDuringEditing = true
    }
    
    @objc func insertNewObject(_ sender: Any) {
        adding = true
        performSegue(withIdentifier: "addingTracks", sender: sender)
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(indexPath.section == 0) {
        }
        else {
            if editingStyle == .delete {
                records.albums![selectedIndexPath!].tracks!.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
                }
            }
        records.save()
        tableView.reloadData()
        }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : records.albums![selectedIndexPath!].tracks!.isEmpty ? 1 : records.albums![selectedIndexPath!].tracks!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier2") as! AlbumTableViewCell
            tableView.rowHeight = 130
            let rowData = records.albums![selectedIndexPath!]
            cell.album = rowData.name!
            cell.artist = rowData.artist!
            cell.year = rowData.year!
            cell.recordLabel = rowData.label!
            cell.albumImage = UIImage(named: rowData.thumbnail!)
            return cell
        }
        else {
            if(!records.albums![selectedIndexPath!].tracks!.isEmpty){
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier3", for: indexPath) as! TrackTableViewCell
                tableView.rowHeight = 40
                let rowData = records.albums![selectedIndexPath!].tracks![indexPath.row]
                cell.number = String(rowData.number!) + "."
                cell.title = rowData.title!
                cell.length = rowData.length!
                cell.composer = rowData.composer!
                return cell
            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier3", for: indexPath) as! TrackTableViewCell
                tableView.rowHeight = 40
                cell.number = ""
                cell.title = ""
                cell.length = ""
                cell.composer = ""
                return cell
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if tableView.isEditing {
            return true
        }
        return false
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (tableView.isEditing && indexPath.section == 0) {
            adding = false
            performSegue(withIdentifier: "editingAlbum", sender: tableView.cellForRow(at: indexPath))
        }
        else if (tableView.isEditing && indexPath.section != 0){
            adding = false
            performSegue(withIdentifier: "editingTracks", sender: tableView.cellForRow(at: indexPath))
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if segue.identifier == "editingAlbum" {
            let tableViewCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: tableViewCell)
            let detailVC =  segue.destination as! editingAlbumViewController
            detailVC.albumIndexPath = selectedIndexPath!
            detailVC.trackIndexPath = indexPath!.row
            detailVC.albumInput = records.albums![selectedIndexPath!].name
            detailVC.artist = records.albums![selectedIndexPath!].artist
            detailVC.year = records.albums![selectedIndexPath!].year
            detailVC.rLabel = records.albums![selectedIndexPath!].label
            detailVC.thumbnail = records.albums![selectedIndexPath!].thumbnail
        }
        
        else if (segue.identifier == "editingTracks"){
            let tableViewCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: tableViewCell)
            let trackIndex = indexPath!.row
            let detailVC =  segue.destination as! editingTracksViewController
            detailVC.albumIndexPath = selectedIndexPath!
            detailVC.trackIndexPath = trackIndex
            detailVC.trackString = records.albums![selectedIndexPath!].tracks![trackIndex].number
            detailVC.titleString = records.albums![selectedIndexPath!].tracks![trackIndex].title
            detailVC.length = records.albums![selectedIndexPath!].tracks![trackIndex].length
            detailVC.composer = records.albums![selectedIndexPath!].tracks![trackIndex].composer
        }
        
    
    }
}
    
