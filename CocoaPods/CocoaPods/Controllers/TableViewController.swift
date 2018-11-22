//
//  TableViewController.swift
//  CocoaPods
//
//  Created by Pablo Rosalvo on 21/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//

import UIKit
import Kingfisher
class TableViewController: UITableViewController {

   // var pokes: [Poke] c=  []
    var cardsArray = [Cards]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getPoke()
        self.tableView.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return self.cardsArray.count
        
    }
    
    func getPoke() {
        ApiPokemon.getPoke { cards in
            self.cardsArray = cards
            self.tableView.reloadData()
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokeTableViewCell
        
        let card = cardsArray[indexPath.row]
        
        cell.nomePokemon.text = card.name
        
        cell.ivPokemon.kf.setImage(with: URL(string: card.imageUrl))
 
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("select\(indexPath.row)")
        let selectCard = cardsArray[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: "InfoPokeViewController") as! InfoPokeViewController
        viewController.card = selectCard
        self.navigationController?.pushViewController(viewController, animated: true)
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
