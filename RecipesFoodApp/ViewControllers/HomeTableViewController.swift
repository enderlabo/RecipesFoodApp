//
//  HomeTableViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 28/10/21.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Loading the custom cell
        let recipeCell = UINib.init(nibName: "RecipieCellTableViewCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "RecipieCellTableViewCell")
        
   
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipieCellTableViewCell", for: indexPath) as! RecipieCellTableViewCell
        
        return cell
    }

}
