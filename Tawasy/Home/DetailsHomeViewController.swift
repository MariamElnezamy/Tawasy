//
//  DetailsHomeViewController.swift
//  Tawasy
//
//  Created by Admin on 2/19/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class DetailsOfHome {
    
    var name:String=""
    var Img:String=""
    var price:String=""

    init(name:String,Img:String,price:String) {
        
        self.name=name
        self.Img=Img
        self.price=price
    }
    
    
}


class DetailsHomeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    

    var nameArr = [
        ["شوربة دجاج بالكريمة","شوربة عدس","شوربه مينسترونى","حساء اليوم"],
        ["سلطة متبلة","السلطة اليونانية","فتوش","بابا غنوج"],
        ["شاورما فراخ","برجر اللحم","شيش طاووق","ساندوتش الكلوب"],
        ["خليط عربي مشوي","كباب خشخاش","دجاج مسحب (بدون عظام)","واحد كيلو مشوي مختلط","كباب أورفلي","دجاج تكا مسالا"],
        ["سلطه فواكه","ام على"],
        ["سلطه فواكه"],
        ["اناناس","فراولة","مانجو","برتقال","ليمون نعناع"],
        ["بيبسى -ميراندا -7 اب -ديو"],
        ["مياه معدنية"],
        ["روبيان مقلي ومشوي","شيري فيش جريل"],
        ["كيبا","كبد الدجاج","بطاطا مقلية"],
        ["كامل أوزي","لحم الخروف محشي ورق العنب","منسف الاردن","مندي","الربع أوزي","المسخن"]
    ]
    var imgArr = [
        ["شوربة دجاج بالكريمة","شوربة عدس","شوربه مينسترونى","حساء اليوم"],
        ["سلطة متبلة","السلطة اليونانية","فتوش","بابا غنوج"],
        ["شاورما فراخ","برجر اللحم","شيش طاووق","ساندوتش الكلوب"],
        ["خليط عربي مشوي","كباب خشخاش","دجاج مسحب (بدون عظام)","واحد كيلو مشوي مختلط","كباب أورفلي","دجاج تكا مسالا"],
        ["سلطه فواكه","ام على"],
        ["سلطه فواكه"],
        ["اناناس","فراولة","مانجو","برتقال","ليمون نعناع"],
        ["ميراندا -7 اب -ديو"],
        ["مياه معدنية"],
        ["روبيان مقلي ومشوي","شيري فيش جريل"],
        ["كيبا","كبد الدجاج","بطاطا مقلية"],
        ["كامل أوزي","لحم الخروف محشي ورق العنب","منسف الاردن","مندي","الربع أوزي","المسخن"]
    ]
    var priceArr = [
        ["10 درهم إماراتي","10 درهم إماراتي","10 درهم إماراتي","15 درهم إماراتي"],
        ["29.40 درهم إماراتي","15 درهم إماراتي","10 درهم إماراتي","12 درهم إماراتي"],
        ["5.7.10 درهم إماراتي","20 درهم إماراتي","10 درهم إماراتي","20 درهم إماراتي"],
        ["35 درهم إماراتي","38 درهم إماراتي","120 درهم إماراتي","120 درهم إماراتي","35 درهم إماراتي","20 درهم إماراتي"],
        ["10 درهم إماراتي","10 درهم إماراتي"],
        ["10/15/20 درهم إماراتي"],
        ["18 درهم إماراتي","18 درهم إماراتي","18 درهم إماراتي","18 درهم إماراتي","18 درهم إماراتي"],
        ["4 درهم إماراتي"],
        ["2 درهم إماراتي"],
        ["40 درهم إماراتي","30 درهم إماراتي"],
        ["15 درهم إماراتي","15 درهم إماراتي","10 درهم إماراتي"],
        ["1250 درهم إماراتي","1300 درهم إماراتي","45 درهم إماراتي","450 درهم إماراتي","350 درهم إماراتي","35 درهم إماراتي"]
    ]

    var contentIndex:Int!
    
    func customInit (contentIndex:Int) {
        
        self.contentIndex=contentIndex
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr[contentIndex].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailsTableViewCell
        cell.name.text = nameArr[contentIndex][indexPath.row]
        cell.price.text = priceArr[contentIndex][indexPath.row]
        cell.Img.image = UIImage(named: imgArr[contentIndex][indexPath.row])
        
        cell.AddBtn.layer.masksToBounds = true
        cell.AddBtn.layer.cornerRadius = 10
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
