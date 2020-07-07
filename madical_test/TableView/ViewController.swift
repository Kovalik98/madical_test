//
//  ViewController.swift
//  madical_test
//
//  Created by Nazar Kovalik on 05.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var firstView: SectionsView!
    @IBOutlet weak var secondView: SectionsView!
    @IBOutlet weak var thirdView: SectionsView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var firstTabBar: TabBar!
    @IBOutlet weak var secondTabBar: TabBar!
    @IBOutlet weak var thirdTabBar: TabBar!
    
    var viewImage: UIImage = UIImage(named: "nurse")!
    var user:[UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstView.name.text = "Doctor"
        secondView.name.text = "Medicines"
        thirdView.name.text = "Digonostic"
        firstView.subtext.text = "Search doctor  around you"
        secondView.subtext.text = "Order Medicine to home"
        thirdView.subtext.text = "Book test at Doorstep"
        secondView.logoImg.image = photoTranslation(text: "nurse")
        thirdView.logoImg.image = photoTranslation(text: "pill")
         setupTableView()
        headView.layer.cornerRadius = 25
        headView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        tabBarView.layer.cornerRadius = 25
        firstTabBar.name.text = "Home"
        secondTabBar.name.text = "Chat"
        thirdTabBar.name.text = "Account"
        firstTabBar.image.image = photoTranslation(text: "Path 367")
        thirdTabBar.image.image = photoTranslation(text: "user-4")
        
        let ind = UINib(nibName: "CodeTableViewCell", bundle: nil)
        tableView.register(ind, forCellReuseIdentifier: "CodeTableViewCell")
        
        user.append(UserModel(avatar: "asset-1", name: "Dr. Steve Robert", subtext: "B.Sc, MBBS, DDVL,"))
        user.append(UserModel(avatar: "asset-2", name: "Dr. Alina James", subtext: "Dr. Alina James"))
        user.append(UserModel(avatar: "asset-3", name: "Dr. Senila Fig", subtext: "B.Sc, MBBS, DDVL, MD-  Dermitologist"))
    }
    
    func photoTranslation(text: String) -> UIImage {
         viewImage = UIImage(named: text)!
        return viewImage
    }
}

