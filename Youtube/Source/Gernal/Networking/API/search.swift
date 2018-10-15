//
//  search.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/15.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import Foundation
extension Networking{
    static func search( q:String, finish:@escaping (SearchResult)->Void, failed:@escaping (NetWorkingError)->Void) -> Void {
        let parameter = ["part":"snippet","maxResults":"25","q":q,"key":youtuBeAPIKey]
        let task = Networking.default.network_request(Networking.default.url(methodName: .search),parameters:parameter)
        task.convert(finished: finish, failed: failed)
        //GET https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=25&q=surfing&key={YOUR_API_KEY}
    }
}
