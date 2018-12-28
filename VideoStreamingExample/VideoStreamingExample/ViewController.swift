//
//  ViewController.swift
//  VideoStreamingExample
//
//  Created by Sunil on 27/12/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

import UIKit

import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playClicked(_ sender: Any) {

        if (sender as! UIButton).tag == 1
        {
            //AVPlayerViewController
            let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
            let avplayer = AVPlayerViewController()
            let player = AVPlayer(url: url!)

            avplayer.player = player
            self.present(avplayer, animated: true) {
                avplayer.player?.play()
            }
        }else{
            //Using AVPlayerLayer
            let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
            let player = AVPlayer(url: videoURL!)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = self.view.bounds
            self.view.layer.addSublayer(playerLayer)
            player.play()
        }


    }
}

