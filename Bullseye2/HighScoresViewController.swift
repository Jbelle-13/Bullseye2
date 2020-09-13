//
//  ViewController.swift
//  Bullseye2
//
//  Created by Jonathon Belliveau on 9/7/20.
//  Copyright © 2020 Jonathon Belliveau. All rights reserved.
//


import UIKit

class HighScoresViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    // MARK:- Table View Data Source
  override func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
    return 5
  }

  override func tableView(_ tableView: UITableView,
               cellForRowAt indexPath: IndexPath)
               -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(
                          withIdentifier: "HighScoreItem",
                                     for: indexPath)

    
    // Add the following code
    let nameLabel = cell.viewWithTag(1000) as! UILabel
    let scoreLabel = cell.viewWithTag(2000) as! UILabel

    
    if indexPath.row == 0 {
      nameLabel.text = "The reader of this book"
      scoreLabel.text = "50000"
    
    } else if indexPath.row == 1 {
      nameLabel.text = "Manda"
      scoreLabel.text = "10000"
    
    } else if indexPath.row == 2 {
      nameLabel.text = "Joey"
      scoreLabel.text = "5000"
    
    } else if indexPath.row == 3 {
      nameLabel.text = "Adam"
      scoreLabel.text = "1000"
    
    } else if indexPath.row == 4 {
      nameLabel.text = "Eli"
      scoreLabel.text = "500"
    }
    // End of new code block
    
    return cell
  }
  
  // MARK:- Table View Delegate
  override func tableView(_ tableView: UITableView,
             didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
}
