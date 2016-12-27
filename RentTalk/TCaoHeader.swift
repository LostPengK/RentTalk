//
//  TCaoHeader.swift
//  RentTalk
//
//  Created by pengkang on 2016/12/5.
//  Copyright © 2016年 pengkang. All rights reserved.
//

import UIKit

class TCaoHeader: UIView {
    
    @IBOutlet weak var backImageV: UIImageView!
    @IBOutlet weak var headerImageV: UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        configData()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configData()
    }
    
    func  configData() {
        backgroundColor = RTDefine().defaultColor
    }
    
    override func awakeFromNib() {
        configData()
    }
    
    static func newInstance() -> TCaoHeader? {
        let nibView = Bundle.main.loadNibNamed( "TCaoHeader" , owner: nil, options: nil)
        if let view = nibView?.first as? TCaoHeader {
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
