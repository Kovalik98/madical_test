//
//  ViewController.swift
//  madical_test
//
//  Created by Nazar Kovalik on 05.07.2020.
//  Copyright © 2020 Nazar Kovalik. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak private var headView: UIView!
    @IBOutlet weak private var firstView: SectionsView!
    @IBOutlet weak private var secondView: SectionsView!
    @IBOutlet weak private var thirdView: SectionsView!
    @IBOutlet weak  var tableView: UITableView!
    @IBOutlet weak private var tabBarView: UIView!
    @IBOutlet weak private var firstTabBar: TabBar!
    @IBOutlet weak private var secondTabBar: TabBar!
    @IBOutlet weak private var thirdTabBar: TabBar!
    
    var viewImage: UIImage = UIImage(named: "nurse")!
    var user:[UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        content()
        headView.layer.cornerRadius = 25
        headView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        tabBarView.layer.cornerRadius = 25
        
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
    func content(){
        firstView.name.text = "Doctor"
        secondView.name.text = "Medicines"
        thirdView.name.text = "Digonostic"
        firstView.subtext.text = "Search doctor  around you"
        secondView.subtext.text = "Order Medicine to home"
        thirdView.subtext.text = "Book test at Doorstep"
        secondView.logoImg.image = photoTranslation(text: "nurse")
        thirdView.logoImg.image = photoTranslation(text: "pill")
        firstTabBar.name.text = "Home"
        secondTabBar.name.text = "Chat"
        thirdTabBar.name.text = "Account"
        firstTabBar.image.image = photoTranslation(text: "Path 367")
        thirdTabBar.image.image = photoTranslation(text: "user-4")
        
    }
}

