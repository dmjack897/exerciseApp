//
//  ViewController.swift
//  second_page
//
//  Created by 심동목 on 2018/10/01.
//  Copyright © 2018年 シムどんモク. All rights reserved.
//
import UIKit
import AVKit  //動画再生の為ヘーダファイル

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnFirstMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/o6jUa3sQQFw")!
        
        playVideo(url: url)
    }
    @IBAction func btnSecondMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/o6jUa3sQQFw")!
        
        playVideo(url: url)
    }
    
    @IBAction func btnThridMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/o6jUa3sQQFw")!
        
        playVideo(url: url)
    }
    
    @IBAction func btnForthMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/o6jUa3sQQFw")!
        
        playVideo(url: url)
    }
    
    private func playVideo(url: NSURL)   //共通的に必要な部分を別に宣言する部分
    {
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true)
        {
            player.play()
        }
    }
}

