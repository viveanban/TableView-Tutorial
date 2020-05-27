//
//  ViewController.swift
//  TableView-Tutorial
//
//  Created by ANBAN, Viveka on 2020-05-27.
//  Copyright © 2020 ANBAN, Viveka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //Set the data to display
    var items: [String] = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register the cell class
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    //Set the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    //Create cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }

    //Handle cell selection
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }

}

