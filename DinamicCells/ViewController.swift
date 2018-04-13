//
//  ViewController.swift
//  DinamicCells
//
//  Created by Alan Casas on 13/4/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class DynamicTableViewController: UITableViewController {
    
    var dataArray:[String] = ["Alan, electronic technician, happily married, future developer",
                              "Bibian",
                              "Theressa",
                              "Mani",
                              "Julius",
                              "Bob",
                              "My nam is Julian, I born in 1980 and I will be in Italy next years by job"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 44
        
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = dataArray[indexPath.row]
        
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
}
