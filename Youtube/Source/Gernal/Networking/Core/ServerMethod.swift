//
//  APIInterface.swift
//  News
//
//  Created by 宋文通 on 2018/5/3.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
//域名
enum Domain:String {
    case serverURL = "https://www.googleapis.com/youtube/v3"//youtubev3服务器
    case releaseServer = ""//正式服务器
}
//接口名
enum ServerMethod: String {
    case testGet = "get"
    case testPost = "post"
    case search = "search"
    case youtube_search_list = "youtube.search.list"
    //GET https://www.googleapis.com/youtube/v3/search
}

