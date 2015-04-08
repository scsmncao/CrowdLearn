//
//  ViewController.swift
//  CrowdLearn
//
//  Created by Simon Cao on 3/31/15.
//  Copyright (c) 2015 CrowdLearn. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var items: [String] = ["Displacement, Velocity, Time", "Acceleration", "Kinematics", "Projectile Motion"]
    
    var clickedButtonTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.rowHeight = 60.0
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "details")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("details") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator;
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destViewController = segue.destinationViewController as LessonContentView
        destViewController.title = clickedButtonTitle
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let clickedRow = indexPath.row;
        clickedButtonTitle = self.items[clickedRow]
        if clickedRow == 0 {
            self.performSegueWithIdentifier("detaillesson", sender: self);
        }
    }
    
    
}

