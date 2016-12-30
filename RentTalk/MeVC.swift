//
//  MeVC.swift
//  RentTalk
//
//  Created by pengkang on 2016/11/26.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class MeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataSource: NSMutableArray!
    @IBOutlet weak var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "个人中心"
        navigationController?.isNavigationBarHidden = true
        mainTable.register(UITableViewCell.self , forCellReuseIdentifier: "cell")

        dataSource = NSMutableArray()
        dataSource.add(["我的吐槽","我的评论"])
        dataSource.add(["我喜欢的","我讨厌的"])
        dataSource.add(["设置"])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MeVC {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dataSource.count
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
