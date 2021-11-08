//
//  HomeTableViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 28/10/21.
//

import UIKit

class HomeTableViewController: UITableViewController {
    //MARK: - Fake Data
    let sections = ["FEATURED RECIPES", " LATEST"]
    let items = [ ["Pasta"], ["Soup", "Donnus", "Pizza"] ]

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Loading a customs cell
        let recipeCell = UINib.init(nibName: "RecipieCellTableViewCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "RecipieCellTableViewCell")
        
        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        self.tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
        
        let headerMainView = UINib.init(nibName: "HeaderMainView", bundle: nil)
        self.tableView.register(headerMainView, forHeaderFooterViewReuseIdentifier: "HeaderMainView")

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = cellSections(rawValue: indexPath.section) else { return 0 }
        
        switch section {
            case .featured:
                return 160
            case .latest:
                return 260
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if let section = cellSections(rawValue: indexPath.section){
            switch section {
                
                case .featured:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                    return cell
                
                case .latest:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "RecipieCellTableViewCell", for: indexPath) as! RecipieCellTableViewCell
                    return cell
                }
        }
        
        return cell
    }
    
    //MARK: - Show Custom cell
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let featureCell = cell as? FeatureCell
        featureCell?.uiCollectionView.delegate = self
        featureCell?.uiCollectionView.dataSource = self
        
        let collectionViewCellNib = UINib.init(nibName: "FeatureCollectionCell", bundle: nil)
        featureCell?.uiCollectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "FeatureCollectionCell")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderMainView") as! HeaderMainView
        headerView.HeaderLabel.text = sections[section]
        
        return headerView
    }

}

//MARK: - Cells Section with ENUMS

enum cellSections: Int {
    case featured = 0, latest
}
