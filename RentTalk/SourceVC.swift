//
//  SourceVC.swift
//  RentTalk
//
//  Created by pengkang on 2016/11/26.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class SourceVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataSource: NSMutableArray!
    @IBOutlet weak var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "红黑榜"
        
        dataSource = NSMutableArray.init()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dataSource!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let arr:NSArray! = dataSource!.object(at: section) as? NSArray
        return arr.count
    }
    
    func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let arr:NSArray! = dataSource!.object(at: indexPath.section) as? NSArray
        cell.textLabel?.text = arr.object(at: indexPath.row) as? String
        return cell
    }

}
