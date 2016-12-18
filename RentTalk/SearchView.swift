//
//  SearchView.swift
//  RentTalk
//
//  Created by pengkang on 2016/12/6.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class SearchView: UIView {

    @IBOutlet weak var searchTextField: UITextField!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        searchTextField.layer.borderColor = UIColor.lightGray.cgColor
        searchTextField.layer.borderWidth = 1.0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        searchTextField.layer.cornerRadius =
            searchTextField.frame.height/2.0
    }
    
    static func newInstance() -> SearchView? {
        let nibView = Bundle.main.loadNibNamed( "SearchView" , owner: nil, options: nil)
        if let view = nibView?.first as? SearchView {
            return view
        }
        return nil
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
