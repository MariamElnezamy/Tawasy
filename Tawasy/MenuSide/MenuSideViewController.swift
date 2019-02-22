//
//  MenuSideViewController.swift
//  Tawasy
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class MenuSideViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var nameArr:[String] = ["طلباتي","الموقع","المراجعة","من نحن","التواصل معنا"]
    var ImgArr:[String] = ["MyOrders","location","review","aboutUs","message"]
    var ids:[String] = ["A","B","C","D","E"]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuSideTableViewCell
        cell.Img.image = UIImage(named: ImgArr[indexPath.row])
        cell.textLabel?.font = UIFont(name: "Al Nile", size: 25.0)
        cell.name.text = nameArr[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = ids[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    @IBAction func crossBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
