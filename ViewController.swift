//
//  ViewController.swift
//  I_Can_Do_It
//
//  Created by 심동목 on 2018/10/01.
//  Copyright © 2018年 シムどんモク. All rights reserved.
//


/*
 1番画面の部分
 */
import UIKit

var images = ["1番画面の01.jpg","1番画面の02.jpg","1番画面の03.jpg","1番画面の04.png","1番画面の05.jpg","1番画面の06.jpg",] //モチベーションがで来る写真を配列で宣言する
class ViewController: UIViewController {
    @IBOutlet var lblSentence: UILabel! //入力された文章が表現される部分をoutlet変数で宣言部分
    @IBOutlet var txtSentence: UITextField! //モチベーションが出来る文章を入力する部分をoutletで宣言部分
    @IBOutlet var imgView: UIImageView!  //イメージを見せてくれるoutlet変数で宣言部分
    @IBOutlet var pageControl: UIPageControl! //現在のページの位置を見せてくれるoutlet変数で宣言部分
    @IBOutlet var imgPinch: UIImageView! //Pinch機能をする変数で宣言部分
    
    var initImgWidth: CGFloat!, initImgHeight: CGFloat!
    var initImgOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageControl.numberOfPages = images.count  //pageControlの全てのページの数
        pageControl.currentPage = 0  //現在のページを意味する部分
        pageControl.pageIndicatorTintColor = UIColor.gray //現在以外のページをgray色で表現する
        pageControl.currentPageIndicatorTintColor = UIColor.white //現在のベージをwhite色て表現する
        imgView.image = UIImage(named: images[0])
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))//Pinchの機能が入力されると実行
        self.view.addGestureRecognizer(pinch)
        
        initImgWidth = imgView.frame.width
        initImgHeight = imgView.frame.height
        initImgOrigin = imgView.frame.origin
        
        //画面移動のために変数宣言部分(左の方)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action:   #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        //画面移動のために変数宣言部分(右の方)
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }  //pageControlのactionを宣言する部分
    @IBAction func btnSend(_ sender: UIButton) {  //モチベーションが出来る文章を入力する部分
        lblSentence.text = txtSentence.text!
    }
    //画面移動の機能具現部分
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                if (pageControl.currentPage<pageControl.numberOfPages-1) {
                    pageControl.currentPage = pageControl.currentPage + 1
                }
                print("Swiped Left")
            case UISwipeGestureRecognizerDirection.right:
                if (pageControl.currentPage>0) {
                    pageControl.currentPage = pageControl.currentPage - 1
                }
                print("Swiped Right")
            default:
                break
            }
            
            imgView.frame.origin = initImgOrigin
            imgView.frame.size = CGSize(width: initImgWidth, height: initImgHeight)
            
            imgView.image = UIImage(named: images[pageControl.currentPage])
        }
    }
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer)  //pinchの機能を実行する部分
    {
        imgView.transform = imgView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }
}

