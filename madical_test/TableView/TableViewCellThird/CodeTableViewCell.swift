//
//  CodeTableViewCell.swift
//  madical_test
//
//  Created by Nazar Kovalik on 07.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit

class CodeTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var logoImage: UIImageView!
    @IBOutlet weak private var titleLabe: UILabel!
    @IBOutlet weak private var textField: UITextField!
    @IBOutlet weak private var dashedView: UIView!
    @IBOutlet weak private var view: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        textField.layer.cornerRadius = 15.0
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        
      
    }
    
}
