//
//  VideoDetailViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/18.
//  Copyright © 2018 Wentong Song. All rights reserved.
//  video detail view controller

import UIKit
import youtube_ios_player_helper
class VideoDetailViewController: UIViewController {
    @IBOutlet weak var myPlayerView: YTPlayerView!
    var videoUnit:SearchResultUnit!
    var playList:PlayListItemResult?{
        didSet{
            playListIfNeeded()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myPlayerView.delegate = self
        
        //video
        if let videoId = videoUnit.id.videoId{
            play(withVideoId: videoId)
        }
        guard let playlistId = videoUnit.id.playlistId else{return}
        Networking.playlistItem(playlistId: playlistId, finish: { [weak self](result) in
            self?.playList = result
        }) { (e) in
            print("\(e)")
        }
    }
    func play(withVideoId videoId:String) -> Void {
        myPlayerView.load(withVideoId: videoId)
    }
    func playListIfNeeded() -> Void {
        if videoUnit.id.videoId != nil{
            return
        }
        guard let list = playList else {return}
        guard let first = list.items.first else{return}
        play(withVideoId: first.contentDetails.videoId)
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
extension VideoDetailViewController: YTPlayerViewDelegate {
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
