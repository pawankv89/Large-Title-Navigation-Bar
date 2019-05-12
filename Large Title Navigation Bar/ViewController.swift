//
//  ViewController.swift
//  Large Title Navigation Bar
//
//  Created by Pawan kumar on 29/04/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

/*
 
 https://stackoverflow.com/questions/46578612/multiple-lines-for-large-titles-in-navigation-bars-in-ios-11?noredirect=1&lq=1
 https://gist.github.com/zwang/a9ddeda0f2e03aef9e8ac64b7eb41748
 https://stackoverflow.com/questions/47901318/how-to-set-multi-line-large-title-in-navigation-bar-new-feature-of-ios-11
 */

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        self.title = "Hi this is big title, For navigation large style bar"
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.multiLineLargeTitleInNavigationBar(viewController: self, title: self.title!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}

