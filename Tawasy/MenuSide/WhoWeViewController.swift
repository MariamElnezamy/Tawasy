//
//  MyProfileViewController.swift
//  Tawasy
//
//  Created by Admin on 2/18/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class WhoWeViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{

    
    var Sec = [
        "الساعات",
        "النطاق السعري",
        "الخدمات",
    ]
    
    var item = [
    ["09:00 - 02:00"],
        ["_ _ _ _ _ "],
        ["تأخذ الحجوزات","جيد للمجموعات أو الأطراف","التوصيل","تقديم الطعام","خدمة الطاولة","الجلوس في الهواء الطلق"],
    ]
    
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sec.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return Sec[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor = UIColor.brown.withAlphaComponent(0.15)
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.brown
        header.textLabel?.font = UIFont(name: "Al Nile", size: 21.0)
        header.textLabel?.textAlignment = NSTextAlignment.right
        header.layer.borderWidth = 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item[indexPath.section][indexPath.row]
        cell.textLabel?.textAlignment = NSTextAlignment.right
        cell.textLabel?.font = UIFont(name: "Al Nile", size: 18.0)
        cell.textLabel?.textColor = UIColor.orange.withAlphaComponent(0.9)
        cell.selectionStyle = .none
        return cell
    }
    
    
}
