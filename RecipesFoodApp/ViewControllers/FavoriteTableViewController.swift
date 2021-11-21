//
//  FavoriteTableViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 28/10/21.
//

import UIKit

class FavoriteTableViewController: UITableViewController {

    let items = ["Soup", "Pasta", "Sauce"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recipeCell = UINib(nibName: "RecipieCellTableViewCell", bundle: nil)
        tableView.register(recipeCell, forCellReuseIdentifier: "RecipieCellTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipieCellTableViewCell", for: indexPath) as! RecipieCellTableViewCell
        
        return cell
    }

    

}
