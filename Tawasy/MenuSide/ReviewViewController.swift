//
//  ReviewViewController.swift
//  Tawasy
//
//  Created by Admin on 2/17/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate{
    
    var sections = [
        "كم مرة تتناول الطعام معنا؟",
                             "هل قائمة المينيو سهلة الفهم؟",
                             "بناء على خبرتك ، هل ستزور تواصي بانتظام؟",
                             "هل تنصح بتواصي لصديق؟",
//                             "يرجى تقييم ما يلي بخصوص أجواء مطعمنا"
    ]
    
    var items = [
        ["يوميا","اسبوعيا","شهريا","اول مرة"],
        ["نعم","لا"],
        ["نعم","لا"],
        ["قطعا","ربما","ربما لا","قطعا لا","لست متأكد"],
//        ["الشعور عام","النظافة","الراحة","الاضاءة","الموسيقي"]
    ]
    
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor = UIColor.brown.withAlphaComponent(0.8)
   
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
        header.textLabel?.font = UIFont(name: "Al Nile", size: 17.0)
        header.textLabel?.textAlignment = NSTextAlignment.right
        header.layer.borderWidth = 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.section][indexPath.row]
        cell.textLabel?.textAlignment = NSTextAlignment.right
        cell.textLabel?.font = UIFont(name: "Al Nile", size: 23.0)
        cell.textLabel?.textColor = UIColor.black
        cell.selectionStyle = .none

        return cell
    }
   
    @IBAction func CheckActBtn(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if(sender.isSelected == true)
        {
            sender.setImage(UIImage(named:"check"), for: UIControl.State.normal)
            
        }
        else
        {
            sender.setImage(UIImage(named:"unCheckMarks"), for: UIControl.State.normal)
        }
    }
  
    
    @IBOutlet var SubmitBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SubmitBtn.layer.cornerRadius = 10;
    }
}
