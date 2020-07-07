//
//  TableView.swift
//  medical_project
//
//  Created by Nazar Kovalik on 02.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    func setupTableView(){
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if  row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PosterTableViewCell", for: indexPath) as? PosterTableViewCell
            cell?.cllectionView.delegate = self
            cell?.cllectionView.dataSource = self
            cell?.cllectionView.tag = indexPath.row
            cell?.cllectionView.reloadData()
            return cell!
        } else if row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell
            
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CodeTableViewCell", for: indexPath) as? CodeTableViewCell
            
            return cell!
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 {
            return 3
        }
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionVieLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize(width: ((self.view.frame.size.width/2) + 16), height: 200);
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterCollectionViewCell", for: indexPath) as! posterCollectionViewCell
            if collectionView.tag == 0 {
                cell.img.image = UIImage(named: "Group 1546")
            }
            if collectionView.tag == 1 {
                cell.img.image = UIImage(named: "Group 1546")
            }
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as! UserCollectionViewCell
        cell.nameLabe.text = user[indexPath.row].name
        cell.subtextLabe.text = user[indexPath.row].subtext
        cell.logoImage.image =  photoTranslation(text: user[indexPath.row].avatar)
        return cell
        
    }
}
