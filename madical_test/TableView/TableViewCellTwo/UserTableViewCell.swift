//
//  UserTableViewCell.swift
//  madical_test
//
//  Created by Nazar Kovalik on 06.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var usersCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        let ind = UINib(nibName: "UserCollectionViewCell", bundle: nil)
        usersCollectionView.register(ind, forCellWithReuseIdentifier: "UserCollectionViewCell")
    }

  
}
