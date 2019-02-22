//
//  MenuViewController.swift
//  Tawasy
//
//  Created by Admin on 2/12/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class IconMenu {
    
        var name:String=""
        var Img:String=""
        init(name:String,Img:String) {
            self.name=name
            self.Img=Img
        }
    
}

class HomeViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate{
    
 
    var arr:[IconMenu] = [
                           IconMenu(name: "حساء", Img: "A"),
                           IconMenu(name: "سلطة", Img: "B"),
                           IconMenu(name: "الساندوتشات", Img: "C"),
                           IconMenu(name: "الطبق الرئيسي", Img: "2350"),
                           IconMenu(name: "حلويات", Img: "E"),
                           IconMenu(name: "كوكتيل", Img: "F"),
                           IconMenu(name: "عصير طازج", Img: "bb"),
                           IconMenu(name: "مشروبات غازية", Img: "١"),
                           IconMenu(name: "مياه معدنية", Img: "J"),
                           IconMenu(name: "المأكولات البحرية", Img: "K"),
                           IconMenu(name: "وجبات حارة", Img: "L"),
                           IconMenu(name: "تخصصنا", Img: "M")]
    
    
    @IBOutlet var TableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        cell.ImgLabel.image = UIImage(named: arr[indexPath.row].Img)
        cell.nameLabel.text = arr[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DetailsVC = storyboard.instantiateViewController(withIdentifier: "DetailsHomeViewController") as! DetailsHomeViewController
        
        DetailsVC.title = arr[indexPath.row].name
        DetailsVC.customInit(contentIndex: indexPath.row)
        
        self.navigationController?.pushViewController(DetailsVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        addNavBarImage()
    }
    
    
    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "TawasyLogo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2  - image!.size.width  / 2
        let bannerY = bannerHeight / 2 - image!.size.height  / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
