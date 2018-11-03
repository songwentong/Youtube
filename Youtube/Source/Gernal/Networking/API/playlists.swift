//
//  playlists.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/20.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import Foundation
import Alamofire
extension Networking{
    @discardableResult
    static func playlistItem( playlistId:String, finish:@escaping (PlayListResult)->Void, failed:@escaping (NetWorkingError)->Void) -> DataRequest {
        let parameter = ["part":"snippet,contentDetails","maxResults":"25","playlistId":playlistId,"key":youtuBeAPIKey]
        let task = Networking.default.network_request(Networking.default.url(methodName: .youtube_search_list),parameters:parameter)
        task.convert(finished: finish, failed: failed)
        return task
        //GET https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=25&q=surfing&key={YOUR_API_KEY}
    }
}
