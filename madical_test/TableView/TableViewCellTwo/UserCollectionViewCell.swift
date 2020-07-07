//
//  UserCollectionViewCell.swift
//  madical_test
//
//  Created by Nazar Kovalik on 06.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabe: UILabel!
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var subtextLabe: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    userView.layer.cornerRadius = 10
    userView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
        
    }

}
