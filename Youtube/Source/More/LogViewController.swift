//
//  LogViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/24.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {
    static var log = ""
    @IBOutlet weak var logTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        logTextView.text = LogViewController.log
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionPressed(_ sender: Any) {
        let activity = UIActivityViewController(activityItems: [LogViewController.log], applicationActivities: nil)
        self.present(activity, animated: true, completion: nil)
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
