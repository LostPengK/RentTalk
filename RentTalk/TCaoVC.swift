//
//  TCaoVC.swift
//  RentTalk
//
//  Created by pengkang on 2016/11/26.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class TCaoVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var mainTable: UITableView!
    var headerView: TCaoHeader!
    var searchView: SearchView!
    
    var dataSource: NSMutableArray!
    let value: Int = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "吐槽区"
        navigationController?.isNavigationBarHidden = true
        
        
        dataSource = []
        for i in 0 ... 20 {
            dataSource.add(i)
        }
        
        mainTable = UITableView.init(frame: self.view.frame, style: UITableViewStyle.plain)
        view.addSubview(self.mainTable)
        mainTable.delegate = self
        mainTable.dataSource = self
        mainTable.contentInset = .init(top: 250, left: 0, bottom: 0, right: 0)
        headerView = TCaoHeader.newInstance()
        headerView.frame = .init(x: 0, y: -250, width: self.view.frame.size.width, height: 250)
        mainTable.addSubview(headerView)
        mainTable.register(UITableViewCell.self , forCellReuseIdentifier: "cell")
        
        searchView = SearchView.newInstance()
        searchView.frame = .init(x: 0, y: 0, width: self.view.frame.size.width, height: 64)
        view.addSubview(searchView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        view.endEditing(true)
        if scrollView.contentOffset.y <= -250 {
            headerView?.frame = .init(x: 0, y: scrollView.contentOffset.y, width: self.view.frame.size.width, height: -scrollView.contentOffset.y)
        }  else {
            headerView?.frame = .init(x: 0, y: -250, width: self.view.frame.size.width, height: 250)
        }
        
        if scrollView.contentOffset.y <= -250 + 50 {
            searchView?.setTextFieldMaxWidth(max: true)
        }  else {
            searchView?.setTextFieldMaxWidth(max: false)
        }
        
        let  changeColor = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: (scrollView.contentOffset.y+250)/255.0)
        searchView?.backgroundColor = changeColor
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text =  String(describing: dataSource.object(at: indexPath.row))
        let red = Float(arc4random()%255)/255.0
        let green = Float(arc4random()%255)/255.0
        let blue = Float(arc4random()%255)/255.0
        cell.backgroundColor = UIColor.init(colorLiteralRed: red , green: green, blue: blue, alpha: 0.8)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("this is a action","dasdadasd")
        
        let detail = TCaoDetailVC()
        navigationController?.pushViewController(detail, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}
