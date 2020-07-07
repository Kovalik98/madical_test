//
//  NoRecordView.swift
//  CustomViewClassWithXIB
//
//  Created by Aman Aggarwal on 29/03/20.
//  Copyright © 2020 Aman Aggarwal. All rights reserved.
//

import UIKit

class SectionsView: UIView {

  
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var subtext: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        circleView.layer.cornerRadius = circleView.frame.size.width/2
        circleView.clipsToBounds = true
       
    }
    
    func commonInit(){
        let viewFromXib = Bundle.main.loadNibNamed("SectionsView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }

}
