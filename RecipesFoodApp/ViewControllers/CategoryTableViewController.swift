//
//  CategoryTableViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 28/10/21.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    // Also can use Dictionary and ref each value.
    let items = ["APPETIZER", "BREAKFAST & BRUNCH", "DESSERT", "BEVERAGES", "MAIN DISH", "PASTA", "SALAD", "SOUP"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCell
        cell.categoryLabel.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 62
    }

}
