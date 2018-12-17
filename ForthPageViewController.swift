//
//  ViewController.swift
//  Forth_page
//
//  Created by 심동목 on 2018/10/06.
//  Copyright © 2018年 シムどんモク. All rights reserved.
//

import UIKit

class ForthPageViewController: UIViewController {

    @IBOutlet var lblCurrentTime: UILabel!//時間を表現するためのlabel
    let timeSelector: Selector = #selector(ForthPageViewController.updateTime)  //現在の日にちのため
    let interval = 1.0   //現在の日にちのため
    var count = 0   //現在の日にちのため
    @IBOutlet var btnSend: UIButton!  //ボタン
    
    var imgUP = [UIImage]()   //イメージを配列で宣言
    
    @IBOutlet var ImgViewUP_01: UIImageView!
    @IBOutlet var ImgViewUP_02: UIImageView!
    @IBOutlet var ImgViewUP_03: UIImageView!
    @IBOutlet var ImgViewUP_04: UIImageView!
    @IBOutlet var ImgViewUP_05: UIImageView!
    @IBOutlet var ImgViewUP_06: UIImageView!
    @IBOutlet var ImgViewUP_07: UIImageView!
    @IBOutlet var ImgViewUP_08: UIImageView!
    @IBOutlet var ImgViewUP_09: UIImageView!
    @IBOutlet var ImgViewUP_10: UIImageView!
    @IBOutlet var ImgViewUP_11: UIImageView!
    @IBOutlet var ImgViewUP_12: UIImageView!
    @IBOutlet var ImgViewUP_13: UIImageView!
    @IBOutlet var ImgViewUP_14: UIImageView!
    @IBOutlet var ImgViewUP_15: UIImageView!
    @IBOutlet var ImgViewUP_16: UIImageView!
    @IBOutlet var ImgViewUP_17: UIImageView!
    @IBOutlet var ImgViewUP_18: UIImageView!
    @IBOutlet var ImgViewUP_19: UIImageView!
    @IBOutlet var ImgViewUP_20: UIImageView!
    @IBOutlet var ImgViewUP_21: UIImageView!
    @IBOutlet var ImgViewUP_22: UIImageView!
    @IBOutlet var ImgViewUP_23: UIImageView!
    @IBOutlet var ImgViewUP_24: UIImageView!
    @IBOutlet var ImgViewUP_25: UIImageView!
    @IBOutlet var ImgViewUP_26: UIImageView!
    @IBOutlet var ImgViewUP_27: UIImageView!
    @IBOutlet var ImgViewUP_28: UIImageView!
    @IBOutlet var ImgViewUP_29: UIImageView!
    @IBOutlet var ImgViewUP_30: UIImageView!
    @IBOutlet var ImgViewUP_31: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        imgUP.append(UIImage(named: "page_04")!)
        imgUP.append(UIImage(named: "page_04_02")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateTime()
    {
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = formatter.string(from: date as Date)
        
        
    }
    
    @IBAction func btnImage(_ sender: UIButton) {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        
        switch day {
        case 1:
            ImgViewUP_01.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 2:
            ImgViewUP_02.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 3:
            ImgViewUP_03.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 4:
            ImgViewUP_04.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 5:
            ImgViewUP_05.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 6:
            ImgViewUP_06.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 7:
            ImgViewUP_07.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 8:
            ImgViewUP_08.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 9:
            ImgViewUP_09.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 10:
            ImgViewUP_10.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 11:
            ImgViewUP_11.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 12:
            ImgViewUP_12.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 13:
            ImgViewUP_13.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 14:
            ImgViewUP_14.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 15:
            ImgViewUP_15.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 16:
            ImgViewUP_16.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 17:
            ImgViewUP_17.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 18:
            ImgViewUP_18.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 19:
            ImgViewUP_19.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 20:
            ImgViewUP_20.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 21:
            ImgViewUP_21.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 22:
            ImgViewUP_22.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 23:
            ImgViewUP_23.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 24:
            ImgViewUP_24.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 25:
            ImgViewUP_25.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 26:
            ImgViewUP_26.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 27:
            ImgViewUP_27.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 28:
            ImgViewUP_28.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 29:
            ImgViewUP_29.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        case 30:
            ImgViewUP_30.image = imgUP[1]  //ボタンを押すと当日の部分が表示される
        default:
            ImgViewUP_31.image = imgUP[1]   //ボタンを押すと当日の部分が表示される
        }
    }
    
}

