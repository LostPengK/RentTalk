//
//  TCaoDetailVC.swift
//  RentTalk
//
//  Created by pengkang on 16/12/27.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class TCaoDetailVC: UIViewController {

    // Mark:
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "detail"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
