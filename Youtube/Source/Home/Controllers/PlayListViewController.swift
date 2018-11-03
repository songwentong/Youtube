//
//  PlayListViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/11/3.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class PlayListViewController: UIViewController {
    var videoUnit:SearchResultUnit?{
        didSet{
            guard let playlistId = videoUnit?.id.playlistId else{return}
            Networking.playlistItem(playlistId: playlistId, finish: { [weak self](result) in
                self?.playList = result
            }) { (e) in
                print("\(e)")
            }
        }
    }
    var items:[PlayListItemResultUnit] = []{
        didSet{
            playListTableView.reloadData()
        }
    }
    var playList:PlayListItemResult?{
        didSet{
            if let playList = playList{
                items = playList.items
            }
        }
    }
    @IBOutlet weak var playListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? VideoDetailViewController{
            if let obj = sender as? PlayListItemResultUnit{
                vc.videoId = obj.contentDetails.videoId
            }
        }
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
extension PlayListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].snippet.title
        return cell
    }
    
    
}
extension PlayListViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let item = items[indexPath.row]
        performSegue(withIdentifier: "playVideo", sender: item)
    }
}
