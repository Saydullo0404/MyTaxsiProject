//
//  ViewController.swift
//  MyTaxsiProject
//
//  Created by 1 on 16/12/21.
//

import UIKit
import SnapKit
import SideMenu


class ViewController: UIViewController,MenuControllerDelegate {
    
    func didSelectMenuItem(named: String) {
        
    }
    var sideMenu: SideMenuNavigationController?
    let menuButton  = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
        
        
        
    }
    func initViews() {
        var menu = MenuListVC()
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        sideMenu?.menuWidth = (view.frame.width)*3/4
        sideMenu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        sideMenu?.navigationBar.clipsToBounds = true
        sideMenu?.navigationBar.barTintColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
        
        view.addSubview(menuButton)
        menuButton.addTarget(self, action: #selector(openSide), for: .touchUpInside)
        menuButton.setImage(#imageLiteral(resourceName: "MenuButton"), for: .normal)
        menuButton.clipsToBounds = true
        menuButton.contentMode = .scaleAspectFill
        
       
        menuButton.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(0.1)
            make.left.equalToSuperview().inset(10)
            make.height.width.equalTo(45)
        }
    }
    @objc func openSide() {
        present(sideMenu!, animated: true, completion: nil)
        
    }
    
    
}

