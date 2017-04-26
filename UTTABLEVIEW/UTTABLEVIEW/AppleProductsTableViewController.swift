//
//  AppleProductsTableViewController.swift
//  UTTABLEVIEW
//
//  Created by Cntt27 on 4/19/17.
//  Copyright © 2017 Cntt27. All rights reserved.
//

import UIKit

class AppleProductsTableViewController: UITableViewController {
    var ngaytrongtuan: [String] = ["thứ 2", "thứ 3", "thứ 4", "thứ 5", "thứ 6", "thứ 7", "chủ nhật"]
    var thu2: [String] = ["hd1","hd2"]
    var thu3: [String] = ["hd3","hd4","hd15"]
    var thu4: [String] = ["hd5","hd6"]
    var thu5: [String] = ["hd7","hd8"]
    var thu6: [String] = ["hd9","hd10"]
    var thu7: [String] = ["hd11","hd12"]
    var chunhat: [String] = ["hd13","hd14"]


    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return ngaytrongtuan.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return t
        if section == 0
        {
            return thu2.count
        }
        if section == 1
        {
            return thu3.count
        }
        if section == 2
        {
            return thu4.count
        }
        if section == 3
        {
            return thu5.count
        }
        if section == 4
        {
            return thu6.count
        }
        if section == 5
        {
            return thu7.count
        }
        if section == 6
        {
            return chunhat.count
        }
        
        return -1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product Cell", for: indexPath)

        cell.textLabel?.shadowColor = UIColor.red
        cell.textLabel?.text = ngaytrongtuan[indexPath.section]
        if indexPath.section == 0
        {
            cell.textLabel?.text = thu2[indexPath.row]
        }
        if indexPath.section == 1
        {
            cell.textLabel?.text = thu3[indexPath.row]
        }
        if indexPath.section == 2
        {
            cell.textLabel?.text = thu4[indexPath.row]
        }
        if indexPath.section == 3
        {
            cell.textLabel?.text = thu5[indexPath.row]
        }
        if indexPath.section == 4
        {
            cell.textLabel?.text = thu6[indexPath.row]
        }
        if indexPath.section == 5
        {
            cell.textLabel?.text = thu7[indexPath.row]
        }
        if indexPath.section == 6
        {
            cell.textLabel?.text = chunhat[indexPath.row]
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ngaytrongtuan[section]
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0
        {
            performSegue(withIdentifier: "Showw", sender: thu2[indexPath.row])
        }
        if indexPath.section == 1
        {
            performSegue(withIdentifier: "Showw", sender: thu3[indexPath.row])
        }
        if indexPath.section == 2
        {
            performSegue(withIdentifier: "Showw", sender: thu4[indexPath.row])
        }
        if indexPath.section == 3
        {
            performSegue(withIdentifier: "Showw", sender: thu5[indexPath.row])
        }
        if indexPath.section == 4
        {
            performSegue(withIdentifier: "Showw", sender: thu6[indexPath.row])
        }
        if indexPath.section == 5
        {
            performSegue(withIdentifier: "Showw", sender: thu7[indexPath.row])
        }
        if indexPath.section == 6
        {
            performSegue(withIdentifier: "Showw", sender: chunhat[indexPath.row])
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        let guest = segue.destination as! Show
        guest.cx = sender as! String
    }
    
    
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
