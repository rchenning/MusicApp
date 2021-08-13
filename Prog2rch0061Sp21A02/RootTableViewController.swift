//
//  RootTableViewController.swift
//  Prog2rch0061Sp21A02
//
//  Created by Robert Henning on 3/19/21.
//

import UIKit

public var editing: Bool = false
public var adding: Bool = false
public var records = Records(albums: [Album(name: "The Miseducation of Lauryn Hill", artist: "Lauryn Hill", year: "1998", label: "Sony Music", tracks: [Track(number: 1, title: "Intro", composer: "Lauryn Hill", length: "0:47"), Track(number: 2, title: "Lost Ones", composer: "Lauryn Hill", length: "5:33"), Track(number: 3, title: "Ex-Factor", composer: "Lauryn Hill", length: "5:26"), Track(number: 4, title: "To Zion", composer: "Lauryn Hill", length: "6:08"), Track(number: 5, title: "Doo Wop (That Thing)", composer: "Lauryn Hill", length: "5:19"), Track(number: 6, title: "Superstar", composer: "Lauryn Hill, Johari Newton, James Poyser", length: "4:56"), Track(number: 7, title: "Final Hour", composer: "Lauryn Hill", length: "4:15"), Track(number: 8, title: "When It Hurts So Bad", composer: "Lauryn Hill", length: "5:42"), Track(number: 9, title: "I Used to Love Him (featuring Mary J Blige)", composer: "Lauryn Hill", length: "5:39"), Track(number: 10, title: "Forgive Them Father", composer: "Lauryn Hill", length: "5:15"), Track(number: 11, title: "Every Ghetto, Every City", composer: "Lauryn Hill", length: "5:14"), Track(number: 12, title: "Nothing Even Matters (featuring D'Angelo)", composer: "Lauryn Hill", length: "5:49"), Track(number: 13, title: "Everything Is Everything", composer: "Lauryn Hill, Johari Newton", length: "4:58"), Track(number: 14, title: "The Miseducation of Lauryn Hill", composer: "Lauryn Hill, Tejumold Newton", length: "4:17")], thumbnail: "LaurynHill"),
                        
    Album(name: "Blood on the Tracks", artist: "Bob Dylan", year: "1975", label: "Columbia Records", tracks: [Track(number: 1, title: "Tangled Up in Blue", composer: "Bob Dylan", length: "5:42"), Track(number: 2, title: "Simple Twist of Fate", composer: "Bob Dylan", length: "4:19"), Track(number: 3, title: "You're a Big Girl Now", composer: "Bob Dylan", length: "4:36"), Track(number: 4, title: "Idiot Wind", composer: "Bob Dylan", length: "7:48"), Track(number: 5, title: "You're Gonna Make Me Lonesome When You Go", composer: "Bob Dylan", length: "2:55"), Track(number: 6, title: "Meet Me in the Morning", composer: "Bob Dylan", length: "4:22"), Track(number: 7, title: "Lily, Rosemary and the Jack of Hearts", composer: "Bob Dylan", length: "8:51"), Track(number: 8, title: "If You See Her, Say Hello", composer: "Bob Dylan", length: "4:49"), Track(number: 9, title: "Shelter from the Storm", composer: "Bob Dylan", length: "5:02"), Track(number: 10, title: "Buckets of Rain", composer: "Bob Dylan", length: "3:22")], thumbnail: "BobDylan"),
    
    Album(name: "Purple Rain", artist: "Prince and the Revolution", year: "1984", label: "Warner Bros", tracks: [Track(number: 1, title: "Let's Go Crazy", composer: "Price", length: "4:39"), Track(number: 2, title: "Take Me with U", composer: "Price", length: "3:54"), Track(number: 3, title: "The Beautiful Ones", composer: "Price", length: "5:13"), Track(number: 4, title: "Computer Blue", composer: "Price, John L Nelson, Wendy & Lisa", length: "3:59"), Track(number: 5, title: "Darling Nikki", composer: "Price", length: "4:14"), Track(number: 6, title: "When Doves Cry", composer: "Price", length: "5:54"), Track(number: 7, title: "I Would Die 4 U", composer: "Price", length: "2:49"), Track(number: 8, title: "Baby I'm a Star", composer: "Price", length: "4:24"), Track(number: 9, title: "Purple Rain", composer: "Price", length: "8:41")], thumbnail: "Prince"),
    
    Album(name: "Rumors", artist: "Fleetwood Mac", year: "1977", label: "Warner Bros", tracks: [Track(number: 1, title: "Second Hand News", composer: "Lindsey Buckingham", length: "2:56"), Track(number: 2, title: "Dreams", composer: "Stevie Nicks", length: "4:14"), Track(number: 3, title: "Never Going Back Again", composer: "Lindsey Buckingham", length: "2:14"), Track(number: 4, title: "Don't Stop", composer: "Christine McVie", length: "3:13"), Track(number: 5, title: "Go Your Own Way", composer: "Lindsey Buckingham", length: "3:43"), Track(number: 6, title: "Songbird", composer: "Christine McVie", length: "3:20"), Track(number: 7, title: "The Chain", composer: "Lindsey Buckingham, Mick Fleetwood, Christine McVie, John McVie, Stevie Nicks", length: "4:30"), Track(number: 8, title: "You Make Loving Fun", composer: "Christine McVie", length: "3:31"), Track(number: 9, title: "I Don't Want to Know", composer: "Stevie Nicks", length: "3:15"), Track(number: 10, title: "Oh Daddy", composer: "Christine McVie", length: "3:56"), Track(number: 11, title: "Gold Dust Woman", composer: "Stevie Nicks", length: "4:56")], thumbnail: "FleetwoodMac"),
    
    Album(name: "Nevermind", artist: "Nirvana", year: "1991", label: "DGC", tracks: [Track(number: 1, title: "Smells Like Teen Spirit", composer: "Kurt Cobain, Krist Novoselic, Dave Grohl", length: "5:01"), Track(number: 2, title: "In Bloom", composer: "Kurt Cobain", length: "4:14"), Track(number: 3, title: "Come as You Are", composer: "Kurt Cobain", length: "3:39"), Track(number: 4, title: "Breed", composer: "Kurt Cobain", length: "3:03"), Track(number: 5, title: "Lithium", composer: "Kurt Cobain", length: "4:17"), Track(number: 6, title: "Polly", composer: "Kurt Cobain", length: "2:57"), Track(number: 7, title: "Territorial Pissings", composer: "Kurt Cobain, Chet Powers", length: "2:22"), Track(number: 8, title: "Drain You", composer: "Kurt Cobain", length: "3:43"), Track(number: 9, title: "Lounge Act", composer: "Kurt Cobain", length: "2:36"), Track(number: 10, title: "Stay Away", composer: "Kurt Cobain", length: "3:32"), Track(number: 11, title: "On a Plane", composer: "Kurt Cobain", length: "3:16"), Track(number: 12, title: "Something in the Way", composer: "Kurt Cobain", length: "3:52"), Track(number: 13, title: "Endless, Nameless", composer: "Kurt Cobain, Krist Novoselic, Dave Grohl", length: "6:44")], thumbnail: "Nirvana"),
    
    Album(name: "Abbey Road", artist: "The Beatles", year:"1969", label: "Apple", tracks: [Track(number: 1, title: "Come Together", composer: "John Lennon, Paul McCartney", length: "4:19"), Track(number: 2, title: "Something", composer: "George Harrison", length: "3:02"), Track(number: 3, title: "Maxwell's Silver Hammer", composer: "John Lennon, Paul McCartney", length: "3:27"), Track(number: 4, title: "Oh! Darling", composer: "John Lennon, Paul McCartney", length: "3:27"), Track(number: 5, title: "Octopus Garden", composer: "Richard Starkey", length: "2:51"), Track(number: 6, title: "I Want You (She's So Heavy)", composer: "John Lennon, Paul McCartney", length: "7:47"), Track(number: 7, title: "Here Comes the Sun", composer: "George Harrison", length: "3:05"), Track(number: 8, title: "Because", composer: "John Lennon, Paul McCartney", length: "2:45"), Track(number: 9, title: "You Never Give Me Your Money", composer: "John Lennon, Paul McCartney", length: "4:03"), Track(number: 10, title: "Sun King", composer: "John Lennon, Paul McCartney", length: "2:26"), Track(number: 11, title: "Mean Mr. Mustard", composer: "John Lennon, Paul McCartney", length: "1:06"), Track(number: 12, title: "Polythene Pam", composer: "John Lennon, Paul McCartney", length: "1:13"), Track(number: 13, title: "She Came in Through the Bathroom Window", composer: "John Lennon, Paul McCartney", length: "1:58"), Track(number: 14, title: "Golden Slumbers", composer: "John Lennon, Paul McCartney", length: "1:31"), Track(number: 15, title: "Carry That Weight", composer: "John Lennon, Paul McCartney", length: "1:36"), Track(number: 16, title: "The End", composer: "John Lennon, Paul McCartney", length: "2:05"), Track(number: 17, title: "Her Majesty (hidden Track)", composer: "John Lennon, Paul McCartney", length: "0:23")], thumbnail: "TheBeatles"),
    
    Album(name: "Songs in the Key of Life", artist: "Stevie Wonder", year: "1976", label: "Tamla", tracks: [Track(number: 1, title: "Love's in Need of Love Today", composer: "Stevie Wonder", length: "7:05"), Track(number: 2, title: "Have a Talk with God", composer: "Calvin Hardaway, Stevie Wonder", length: "2:42"), Track(number: 3, title: "Villege Ghetto Land", composer: "Gary Byrd, Stevie Wonder", length: "3:25"), Track(number: 4, title: "Contusion", composer: "Stevie Wonder", length: "3:45"), Track(number: 5, title: "Sir Duke", composer: "Stevie Wonder", length: "3:52"), Track(number: 6, title: "I Wish", composer: "Stevie Wonder", length: "4:12"), Track(number: 7, title: "Knocks Me Off My Feet", composer: "Stevie Wonder", length: "3:35"), Track(number: 8, title: "Pastime Paradise", composer: "Stevie Wonder", length: "3:20"), Track(number: 9, title: "Summer Soft", composer: "Stevie Wonder", length: "4:16"), Track(number: 10, title: "Ordinary Pain", composer: "Stevie Wonder", length: "6:22"), Track(number: 11, title: "Isn't She Lovely", composer: "Stevie Wonder", length: "6:33"), Track(number: 12, title: "Joy Inside My Tears", composer: "Stevie Wonder", length: "6:29"), Track(number: 13, title: "Black Man", composer: "Stevie Wonder", length: "8:29"), Track(number: 14, title: "Ngiculela - Es Una Historia - I Am Singing", composer: "Stevie Wonder", length: "3:48"), Track(number: 15, title: "If It's Magic", composer: "Stevie Wonder", length: "3:11"), Track(number: 16, title: "As", composer: "Stevie Wonder", length: "7:07"), Track(number: 17, title: "Another Star", composer: "Stevie Wonder", length: "8:19")], thumbnail: "StevieWonder"),
    
    Album(name: "Blue", artist: "Joni Mitchell", year: "1971", label: "Reprise", tracks: [Track(number: 1, title: "All I Want", composer: "Joni Mitchell", length: "3:32"), Track(number: 2, title: "My Old Man", composer: "Joni Mitchell", length: "3:33"), Track(number: 3, title: "Little Green", composer: "Joni Mitchell", length: "3:25"), Track(number: 4, title: "Carey", composer: "Joni Mitchell", length: "3:00"), Track(number: 5, title: "Blue", composer: "Joni Mitchell", length: "3:00"), Track(number: 6, title: "California", composer: "Joni Mitchell", length: "3:48"), Track(number: 7, title: "This Flight Tonight", composer: "Joni Mitchell", length: "2:50"), Track(number: 8, title: "River", composer: "Joni Mitchell", length: "4:00"), Track(number: 9, title: "A Case of You", composer: "Joni Mitchell", length: "3:20"), Track(number: 10, title: "The Last Time I Saw Richard", composer: "Joni Mitchell", length: "4:13")], thumbnail: "JoniMitchell"),
    
    Album(name: "Pet Sounds", artist: "The Beach Boys", year: "1966", label: "Capitol", tracks: [Track(number: 1, title: "Wouldn't It Be Nice", composer: "Brian Wilson, Tony Asher, Mike Love", length: "2:25"), Track(number: 2, title: "You Still Believe in Me", composer: "Brian Wilson, Tony Asher", length: "2:31"), Track(number: 3, title: "That's Not Me", composer: "Brian Wilson, Tony Asher", length: "2:28"), Track(number: 4, title: "Don't Talk (Put Your Head on My Shoulder", composer: "Brian Wilson, Tony Asher", length: "2:53"), Track(number: 5, title: "I'm Waiting for the Day", composer: "Brian Wilson, Mike Love", length: "3:05"), Track(number: 6, title: "Let's Go Away for Awhile", composer: "Brian Wilson", length: "2:18"), Track(number: 7, title: "Sloop John B", composer: "Traditional, arranged by Brian Wilson", length: "2:58"), Track(number: 8, title: "God only Knows", composer: "Brian Wilson, Tony Asher", length: "2:51"), Track(number: 9, title: "I Know There's an Answer", composer: "Brian Wilson, Terry Sachen, Mike Love", length: "3:09"), Track(number: 10, title: "Here Today", composer: "Brian Wilson, Tony Asher", length: "2:54"), Track(number: 11, title: "I Just Wasn't Made for These", composer: "Brian Wilson, Tony Asher", length: "3:12"), Track(number: 12, title: "Pet Sounds", composer: "Brian Wilson", length: "2:22"), Track(number: 13, title: "Caroline, No", composer: "Brian Wilson, Tony Asher", length: "2:51")], thumbnail: "TheBeachBoys"),
    
    Album(name: "What's Going On", artist: "Marvin Gaye", year: "1970", label: "Tamla", tracks: [Track(number: 1, title: "What's Going On", composer: "Marvin Gaye, Al Cleveland, Renaldo \"Oble\" Benson", length: "3:53"), Track(number: 2, title: "What's Happening Brother", composer: "Marvin Gaye, James Nyx Jr.", length: "2:43"), Track(number: 3, title: "Flyin' High (In the Friendly Sky)", composer: "Marvin Gaye, Anna Gordy Gaye, Elgie Stover", length: "3:49"), Track(number: 4, title: "Save the Children", composer: "Marvin Gaye, Al Cleveland, Renaldo \"Obie\" Benson", length: "4:03"), Track(number: 5, title: "God is Love", composer: "Marvin Gaye, Anna Gordy Gaye, Elgie Stover, James Nyx Jr.", length: "1:41"), Track(number: 6, title: "Mercy Mercy Me", composer: "Marvin Gaye", length: "3:16"), Track(number: 7, title: "Right On (The Ecology)", composer: "Marvin Gaye, Earl DeRouen", length: "7:31"), Track(number: 8, title: "Wholy Holy", composer: "Marvin Gaye, Renaldo \"Obie\" Benson, Al Cleveland", length: "3:08"), Track(number: 9, title: "Inner City Blues (Make Me Wanna Holler)", composer: "Marvin Gaye, James Nyx Jr.", length: "5:26")], thumbnail: "MarvinGaye")])

class RootTableViewController: UITableViewController {
    
    
    let cellTableIdentifier = "CellTableIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        records = records.retrieve()
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        navigationItem.rightBarButtonItem = addButton
        
        navigationItem.leftBarButtonItem = editButtonItem
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
    @objc func insertNewObject(_ sender: Any) {
        adding = true
        performSegue(withIdentifier: "addingAlbum", sender: sender)
    }
    
    // MARK: -
    // MARK: Table View Data Source Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.albums!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: cellTableIdentifier, for: indexPath)
        
        let rowData = records.albums![indexPath.row]
        cell.textLabel?.text = rowData.name
        cell.detailTextLabel?.text = rowData.artist
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            records.albums!.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
        records.save()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if (segue.identifier == "viewDetails") {
            let tableViewCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: tableViewCell)
            let detailVC =  segue.destination as! AlbumInfoViewController
            detailVC.selectedIndexPath = indexPath!.row
        }
        else {
            
        }
    }

}
