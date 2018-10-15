//
//  SearchResult.swift
//
//  this file is auto create by WTKit on 2018-10-15 11:16:32.
//  site:https://github.com/swtlovewtt/WTKit
//  Thank you for use my json model maker😜
//

public struct SearchResult: Codable {
    var etag:String
    var kind:String
    var id:[String: String]
    var snippet:snippet
    enum CodingKeys: String, CodingKey {
        case etag = "etag"
        case kind = "kind"
        case id = "id"
        case snippet = "snippet"
    }
}
public struct snippet: Codable {
    var channelId:String
    var title:String
    var description:String
    var thumbnails:thumbnails
    var channelTitle:String
    var liveBroadcastContent:String
    var publishedAt:String
    enum CodingKeys: String, CodingKey {
        case channelId = "channelId"
        case title = "title"
        case description = "description"
        case thumbnails = "thumbnails"
        case channelTitle = "channelTitle"
        case liveBroadcastContent = "liveBroadcastContent"
        case publishedAt = "publishedAt"
    }
}
public struct thumbnails: Codable {
    var high:high
    var medium:medium
    var default_var:default_var
    enum CodingKeys: String, CodingKey {
        case high = "high"
        case medium = "medium"
        case default_var = "default"
    }
}
public struct medium: Codable {
    var height:Int
    var url:String
    var width:Int
    enum CodingKeys: String, CodingKey {
        case height = "height"
        case url = "url"
        case width = "width"
    }
}
public struct default_var: Codable {
    var height:Int
    var url:String
    var width:Int
    enum CodingKeys: String, CodingKey {
        case height = "height"
        case url = "url"
        case width = "width"
    }
}
public struct high: Codable {
    var height:Int
    var url:String
    var width:Int
    enum CodingKeys: String, CodingKey {
        case height = "height"
        case url = "url"
        case width = "width"
    }
}
