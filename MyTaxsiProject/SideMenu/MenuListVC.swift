//
//  MenuListVC.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: String)
}
var identy = "SideMenuCell"
class MenuListVC: UITableViewController {
    let data = ["Мои поездки","Способы оплаты ","Избранные адреса"]
    let dataImage:[UIImage] = [#imageLiteral(resourceName: "Direction#2"), #imageLiteral(resourceName: "Combined Shape"), #imageLiteral(resourceName: "Half-start")]
    
    public var delegate: MenuControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        tableView.backgroundColor = .black
        tableView.register(SideMenuCell.self, forCellReuseIdentifier: identy)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        var view = UIView()
        self.view.addSubview(view)
        view.backgroundColor = #colorLiteral(red: 0.152921617, green: 0.15295434, blue: 0.1399437785, alpha: 1)
        view.layer.cornerRadius = 10
        view.snp.makeConstraints { make in
            make.height.equalTo(88)
            make.left.right.equalToSuperview().inset(15)
            make.centerX.equalToSuperview()
        }
        
        var imageOfUser = UIImageView()
        view.addSubview(imageOfUser)
        imageOfUser.image = UIImage(named: "user")
        imageOfUser.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.left.equalTo(view.snp.left).inset(12)
            make.height.width.equalTo(64)
        }
        var userFullName = UILabel()
        view.addSubview(userFullName)
        userFullName.numberOfLines = 2
        userFullName.text = "Islombek Normukhammadov"
        userFullName.textColor = .white
        userFullName.font = .systemFont(ofSize: 18, weight: .semibold)
        userFullName.adjustsFontSizeToFitWidth = true
        userFullName.snp.makeConstraints { make in
            make.centerY.equalTo(imageOfUser.snp.centerY).offset(-5)
            make.left.equalTo(imageOfUser.snp.right).inset(-10)
            make.right.equalTo(view.snp.right).inset(10)
            
        }
        var userPhoneNumber = UILabel()
        view.addSubview(userPhoneNumber)
        userPhoneNumber.text = "+998(97)000-00-00"
        userPhoneNumber.textColor = #colorLiteral(red: 0.4901454449, green: 0.4902316332, blue: 0.4901340604, alpha: 1)
        userPhoneNumber.font = .systemFont(ofSize: 14)
        userPhoneNumber.snp.makeConstraints { make in
            
            make.left.equalTo(userFullName.snp.left)
            make.top.equalTo(userFullName.snp.bottom).offset(2)
            
        }
        


        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identy, for: indexPath) as! SideMenuCell
        cell.sideMenutitle.text = data[indexPath.row]
        cell.sideMenulogoImage.image = dataImage[indexPath.row]

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row) {
        case 0:
            let vc = MytripsViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        default:
            print("error")
        }
    }
    
    
    
    

}

