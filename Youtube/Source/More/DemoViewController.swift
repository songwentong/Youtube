//
//  DemoViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/9.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit
import youtube_ios_player_helper
class DemoViewController: UIViewController {

    @IBOutlet weak var demoPlayerView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        demoPlayerView.load(withVideoId: "ygARoqMJyto")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
