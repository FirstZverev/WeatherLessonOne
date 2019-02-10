//
//  FriendsTableViewController.swift
//  WeatherApp
//
//  Created by Володя Зверев on 05.02.2019.
//  Copyright © 2019 Володя Зверев. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friends = [
        "Иван Петров",
        "Петр Акулов",
        "Констонтин Жарких",
        "Игорь Зверев",
        "Алла Иванова",
        "Александр Дудков",
        "Татьяна Прокашева",
        "Регина Зайцева",
        "Николай Ярица",
        "Катерина Щеглова"
    ]
    var imageName = ["FriendMen",
                     "FriendMen",
                     "FriendMen",
                     "FriendMen",
                     "FriendWomen",
                     "FriendMen",
                     "FriendWomen",
                     "FriendWomen",
                     "FriendMen",
                     "FriendWomen",    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
     override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Friends", for: indexPath) as! FriendTableViewCell
        cell.labelPrototip.text = friends[indexPath.row]
        cell.ImageFriend?.image = UIImage(named: imageName[indexPath.row])
        return cell
    }
    


    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoPerson" {
            if let index = self.tableView.indexPathForSelectedRow?.row {
                print(friends[index])
                if let dest = segue.destination as? CollectionViewController {
                    dest.friend = friends[index]
                    dest.image = imageName[index] + "200" //Разрешение 200х200
                }
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    
}
