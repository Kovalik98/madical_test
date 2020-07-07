//
//  CodeTableViewCell.swift
//  madical_test
//
//  Created by Nazar Kovalik on 07.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit

class CodeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleLabe: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var dashedView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        textField.layer.cornerRadius = 35
    }
    
}
