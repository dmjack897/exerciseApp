//
//  ViewController.swift
//  Third_page
//
//  Created by 심동목 on 2018/10/02.
//  Copyright © 2018年 シムどんモク. All rights reserved.
//


/*
 3番画面の部分
 */
import UIKit
import AVKit

class ThirdPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnFirstMovie(_ sender: UIButton) {
        /*
        let url = NSURL(string: "https://youtu.be/HrpW5PliIdU")!
        
        playVideo(url: url)*/
        let url = NSURL(string: "https://youtu.be/HrpW5PliIdU")!
        
        playVideo(url: url)
    }
    @IBAction func btnSecondMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/s0H6XqRH3no")!
        
        playVideo(url: url)
    }
    @IBAction func btnThridMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/MG69sFM1UIw")!
        
        playVideo(url: url)
    }
    @IBAction func btnForthMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/MrV4vCotio0")!
        
        playVideo(url: url)
    }
    
/*
    private func playVideo(url: NSURL)   //動画再生部分宣言
    {
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true)
        {
            player.play()
        }
    }*/
    
    private func playVideo(url: NSURL)
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

