//
//  TableViewController.swift
//  aacApp
//
//  Created by Byrdann Fox on 10/26/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

/* CREATE A FUCKING TABLEVIEW IN SWIFT... */

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {

    // tableView prop...
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: view.bounds, style: .Plain)
        
        if let theTableView = tableView {
            theTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier:"identifier")
            theTableView.dataSource = self
            theTableView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
            view.addSubview(theTableView)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView/*!*/) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView/*!*/, numberOfRowsInSection section:Int) -> Int {
    
        switch section {
        
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 8
        default:
            return 0
        
        }
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath/*!*/) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("identifier", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = "Section \(indexPath.section), " + "Cell \(indexPath.row)"
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
