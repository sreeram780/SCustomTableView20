//
//  ViewController.swift
//  SCustomTableView20
//
//  Created by sreenivasulareddy on 12/11/15.
//  Copyright © 2015 sreenivasulareddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: UITableViewStyle.Plain)
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ccell")
        tableView.registerNib(UINib(nibName: "CTableViewCell", bundle: nil), forCellReuseIdentifier: "ccell")

        self.view.addSubview(self.tableView)
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var ccell: CTableViewCell!

         ccell = self.tableView.dequeueReusableCellWithIdentifier("ccell", forIndexPath: indexPath) as! CTableViewCell
        ccell.ccelllabel.text = "Hello CustomCell"
        
        return ccell
    }

}

