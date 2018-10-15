//
//  MainTabbarController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/15.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Networking.search(q: "key", finish: { (result) in
            
        }) { (e) in
            
        }
        // Do any additional setup after loading the view.
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
