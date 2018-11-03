//
//  SearchResult.swift
//
//  this file is auto create by WTKit on 2018-10-15 11:16:32.
//  site:https://github.com/swtlovewtt/WTKit
//  Thank you for use my json model maker😜
//  搜索结果
public class SearchResult:Codable{
    var kind:String
    var etag:String
    var nextPageToken:String
    var regionCode:String
    var pageInfo:PageInfo
    var items:[SearchResultUnit]
}
public class PageInfo:Codable{
    var totalResults:Int
    var resultsPerPage:Int
}
public class SearchResultUnit: Codable {
    var etag:String
    var kind:String
    var id:ResultUnitID
    var snippet:Snippet
    enum CodingKeys: String, CodingKey {
        case etag = "etag"
        case kind = "kind"
        case id = "id"
        case snippet = "snippet"
    }
}

public class ResultUnitID:Codable{
    var kind:String
    var videoId:String?
    var playlistId:String?
}
public class Snippet: Codable {//片段
    var channelId:String
    var title:String
    var description:String
    var thumbnails:Thumbnails?
    var channelTitle:String
    var liveBroadcastContent:String?
    var publishedAt:String
    var position:Int?
}
public class Thumbnails: Codable {
    var high:ThumbSize
    var medium:ThumbSize
    var default_var:ThumbSize
    var standard:ThumbSize?
    var maxres:ThumbSize?
    enum CodingKeys: String, CodingKey {
        case high = "high"
        case medium = "medium"
        case default_var = "default"
        case standard = "standard"
        case maxres = "maxres"
    }
}
public class ThumbSize: Codable {
    var height:Int?
    var url:String
    var width:Int?
    enum CodingKeys: String, CodingKey {
        case height = "height"
        case url = "url"
        case width = "width"
    }
}
/*
 {
 "kind": "youtube#searchListResponse",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/71WtWFJhiVCNBXiPZXb9P1I3Vu0\"",
 "nextPageToken": "CBkQAA",
 "regionCode": "TW",
 "pageInfo": {
 "totalResults": 1000000,
 "resultsPerPage": 25
 },
 "items": [
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/aFLvMIiSGn0894mONBhgYIdX3cg\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "nkhpGC10OVw"
 },
 "snippet": {
 "publishedAt": "2017-04-09T17:18:44.000Z",
 "channelId": "UCHeaHzQFLElUw__yG3SSzMg",
 "title": "World's best surfing 2017",
 "description": "World's best surfing 2017 — Enjoy the video. Rate, Comment, Share... Thanx Subscribe for new compilations: http://goo.gl/X017T If your Video is in this ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/nkhpGC10OVw/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/nkhpGC10OVw/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/nkhpGC10OVw/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Monthly Winners",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/E8GZG_CZfJeaVF75eZYmJHnGe0c\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "rj7xMBxd5iY"
 },
 "snippet": {
 "publishedAt": "2017-11-12T11:09:52.000Z",
 "channelId": "UCiiFGfvlKvX3uzMovO3unaw",
 "title": "BIG WAVE SURFING COMPILATION 2017",
 "description": "BIG WAVE SURFING COMPILATION 2017 ** REVISED **AMAZING FOOTAGE ** WITH 60-100FT- HUGE SURF Please Subscribe if You Would like to see More ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/rj7xMBxd5iY/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/rj7xMBxd5iY/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/rj7xMBxd5iY/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Absolutely Flawless",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/WO5q6dSUt9m8pHRzGlR3fq9xvbA\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "c6yOxWf3A6g"
 },
 "snippet": {
 "publishedAt": "2017-08-20T07:00:02.000Z",
 "channelId": "UC1Ho5YvHCtyReazatbhBowA",
 "title": "HOW TO SURF:  7 BEGINNER MISTAKES AND HOW TO FIX THEM",
 "description": "In this video you will get to follow a beginners surfers journey trying to learn how to surf. I have tried surfing before but never with an expert showing how to do it ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/c6yOxWf3A6g/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/c6yOxWf3A6g/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/c6yOxWf3A6g/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Stomp It Tutorials",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/nFTzd0Bsu1FmBXN2h6ZUuJxEsC8\"",
 "id": {
 "kind": "youtube#channel",
 "channelId": "UChuLeaTGRcfzo0UjL-2qSbQ"
 },
 "snippet": {
 "publishedAt": "2007-03-07T15:08:16.000Z",
 "channelId": "UChuLeaTGRcfzo0UjL-2qSbQ",
 "title": "World Surf League",
 "description": "Welcome to the World Surf League's official YouTube Channel. Watch all the latest surfing action of the world's best surfers in the world's best waves. Heats on ...",
 "thumbnails": {
 "default": {
 "url": "https://yt3.ggpht.com/-L_f9lPc3tI4/AAAAAAAAAAI/AAAAAAAAAAA/qvztrVzug0Y/s88-c-k-no-mo-rj-c0xffffff/photo.jpg"
 },
 "medium": {
 "url": "https://yt3.ggpht.com/-L_f9lPc3tI4/AAAAAAAAAAI/AAAAAAAAAAA/qvztrVzug0Y/s240-c-k-no-mo-rj-c0xffffff/photo.jpg"
 },
 "high": {
 "url": "https://yt3.ggpht.com/-L_f9lPc3tI4/AAAAAAAAAAI/AAAAAAAAAAA/qvztrVzug0Y/s800-c-k-no-mo-rj-c0xffffff/photo.jpg"
 }
 },
 "channelTitle": "World Surf League",
 "liveBroadcastContent": "upcoming"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/TDOZq5r9LAdPkD8wytFxbvkjHis\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "aojynRcUNwM"
 },
 "snippet": {
 "publishedAt": "2018-10-11T19:00:00.000Z",
 "channelId": "UCf5CA0OsvhhU-6AcSjT1oKQ",
 "title": "PUMPING surf in Southern California from HURRICANE SERGIO 2018 - RAW",
 "description": "The beginning of October 2018 starts out with a bang as Kalani Robb, Johnny Redmond, Colton Overin and a hand full of locals score back to back clean ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/aojynRcUNwM/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/aojynRcUNwM/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/aojynRcUNwM/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "BEEFS T.V.",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/U34_XAoTV_iG0y2JbxJOYOpVON8\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "b6hoBp7Hk-A"
 },
 "snippet": {
 "publishedAt": "2015-02-03T20:00:01.000Z",
 "channelId": "UCblfuW_4rakIf2h6aqANefA",
 "title": "The Beautiful Chaos of Surfing Pipeline",
 "description": "Pipeline is the Yankee Stadium, center court at Wimbledon, and the Melbourne Cricket Ground of surfing. Surfers grow up on the myths of the hallowed reef ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/b6hoBp7Hk-A/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/b6hoBp7Hk-A/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/b6hoBp7Hk-A/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Red Bull",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/AqxvjSC6z2yie3NWe8geRxT838s\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "I4vcrLf7Sv0"
 },
 "snippet": {
 "publishedAt": "2018-10-31T17:13:22.000Z",
 "channelId": "UC4qa5EroJxnQM6Sng9WhgsQ",
 "title": "SURFING the KELLY SLATER WAVE POOL",
 "description": "What's up NUB NATION!! Today is the day!! Kelly Slater hit me up to join him & a heavy crew at the Surf Ranch in Lemoore, California. I'm not even sure what to ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/I4vcrLf7Sv0/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/I4vcrLf7Sv0/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/I4vcrLf7Sv0/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Ben Gravy",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/f4B92xUeptcNLBwHd4cnYEjNyZE\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "eSwisMEtkBg"
 },
 "snippet": {
 "publishedAt": "2018-09-02T01:56:19.000Z",
 "channelId": "UCfn_qdZ1XMLRKIfMhexjooA",
 "title": "What Surfing Is Actually Like",
 "description": "The Gorpo I Use: https://amzn.to/2COZ1hQ The Mouth Mount I Use: https://amzn.to/2ClyqYM My Free Vlog Like A Pro Course: http://startavlog.com Favorite ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/eSwisMEtkBg/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/eSwisMEtkBg/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/eSwisMEtkBg/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Atua Mo'e",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/FoiwTsto-09Xby-q6fzl2KqNZ_w\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "dBmHlpliXfk"
 },
 "snippet": {
 "publishedAt": "2014-12-28T00:53:46.000Z",
 "channelId": "UCuZSTHZf3vd7eVehhnotcsg",
 "title": "How to Surf Like a Pro in 25 Minutes",
 "description": "Watch the NEW movie, How To Rip 2, featuring easy to follow tutorials on all of SURFINGS ADVANCED SKILLS!",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/dBmHlpliXfk/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/dBmHlpliXfk/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/dBmHlpliXfk/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "How to Rip",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/WqJ26PWiHwML24k-BReSS6RFuAc\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "S2rhZuoKF80"
 },
 "snippet": {
 "publishedAt": "2018-09-17T19:30:00.000Z",
 "channelId": "UCo_q6aOlvPH7M-j_XGWVgXg",
 "title": "SURFING PERFECT WEDGE | JAMIE O'BRIEN",
 "description": "We surf the WEDGE and its HUGE! SUBSCRIBE TO JAMIE O'BRIEN: https://goo.gl/vgKQg8ollow Us: @whoisjob @poopiesgram @bengravvy Film: ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/S2rhZuoKF80/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/S2rhZuoKF80/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/S2rhZuoKF80/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Jamie O'Brien",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/4yi-J9fyCQ_k2fgCAEVx82HAdY0\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "QLT1-9hDsZc"
 },
 "snippet": {
 "publishedAt": "2018-10-01T09:26:56.000Z",
 "channelId": "UCvLT8V6syfFU5AETDM4CtpA",
 "title": "Waikiki Surfing | Queens Surf Break, Honolulu Hawaii | 30 September 2018",
 "description": "Waikiki groms stylishly shredding as usual at the famous Queens surf break this Sunday while uncles and aunties score a few fun ones too. Featuring Journey ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/QLT1-9hDsZc/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/QLT1-9hDsZc/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/QLT1-9hDsZc/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Dans Surf Videos",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/VzeeiufGJ5QsM540zH9QAH07_HE\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "B0i_ryWN3UU"
 },
 "snippet": {
 "publishedAt": "2018-06-18T23:53:40.000Z",
 "channelId": "UCnJ0mt5Cgx4ER_LhTijG_4A",
 "title": "Blue Intensity Full Movie | Surf | VANS",
 "description": "Shot in the beautiful blue water of the South Pacific, #BlueIntensity captures the #Vans #Surf team riding monsters. Directed and scored by George Trim, Blue ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/B0i_ryWN3UU/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/B0i_ryWN3UU/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/B0i_ryWN3UU/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Vans",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/AHSycI2tynUVfUL7B0qODZCTxCM\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "zQVpzCzQa1U"
 },
 "snippet": {
 "publishedAt": "2018-09-13T21:38:34.000Z",
 "channelId": "UCf5CA0OsvhhU-6AcSjT1oKQ",
 "title": "Surfing PERFECT waves at TEXAS Wavepool",
 "description": "I was fortunate enough to visit the BSR wave pool in Waco Texas with Catch Surf pro riders Tyler Stanaland, Blair Conklin, Kalani Robb, Johnny Redmond and ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/zQVpzCzQa1U/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/zQVpzCzQa1U/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/zQVpzCzQa1U/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "BEEFS T.V.",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/ygg7VwhHjBJHqVEMJX8GtK5c9RY\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "aizVVLXK0Ms"
 },
 "snippet": {
 "publishedAt": "2016-10-01T20:06:48.000Z",
 "channelId": "UCBi2mrWuNuyYy4gbM6fU18Q",
 "title": "7-Year-Old Phenom 'Flying Squirrel' Takes Surfing World by Storm",
 "description": "Meet quite possibly the best child surfer in the world, Quincy Symonds. SUBSCRIBE to ABC NEWS: https://www.youtube.com/ABCNews/ Watch More on ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/aizVVLXK0Ms/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/aizVVLXK0Ms/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/aizVVLXK0Ms/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "ABC News",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/HNDqNzkTr-xP3XFb6ZXANNS9_7I\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "vk0F8dHo3wU"
 },
 "snippet": {
 "publishedAt": "2015-10-14T13:45:47.000Z",
 "channelId": "UC-Zt7GPzlrPPQexkG9-shPg",
 "title": "\"Pacific Dreams\" A California Surfing Film",
 "description": "\"Pacific Dreams\" is a surfing movie featuring my 2015 footage shot around the beautiful state of California. Filmed & Edited by Jeff Chavolla To support this ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/vk0F8dHo3wU/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/vk0F8dHo3wU/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/vk0F8dHo3wU/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Jeff Chavolla",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/ojHhn1pyZJPpk69RHv-gYAkJcfw\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "5Vwb3kPwGn4"
 },
 "snippet": {
 "publishedAt": "2017-09-20T20:48:32.000Z",
 "channelId": "UCW8zgx5JhvFPmIZh7NI-jrA",
 "title": "Biggest Surfing Wipeouts #1",
 "description": "Would you like to be in their place? No or really not?",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/5Vwb3kPwGn4/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/5Vwb3kPwGn4/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/5Vwb3kPwGn4/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "SuRf, GaMe & Action",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/EvVv8mqr0gtQTBlEdQsDuW3OrDU\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "pn7SFWpXURk"
 },
 "snippet": {
 "publishedAt": "2017-03-07T17:00:57.000Z",
 "channelId": "UCqhnX4jA0A5paNd1v-zEysw",
 "title": "GoPro Surf: Inside the Legendary Barrels of Namibia",
 "description": "The term \"we scored waves\" in the surfing world gets thrown around quite a bit. Judging from this content of Koa and Alex Smith, Koa Rothman, Benji Brand and ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/pn7SFWpXURk/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/pn7SFWpXURk/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/pn7SFWpXURk/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "GoPro",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/bG6svTXxUBwknDbUEOSYblcXSnw\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "znXTEUEoak4"
 },
 "snippet": {
 "publishedAt": "2018-10-08T19:30:00.000Z",
 "channelId": "UCo_q6aOlvPH7M-j_XGWVgXg",
 "title": "Couch Surfing Perfect Pipeline | Jamie O'Brien",
 "description": "PIPE IS BACK! SUBSCRIBE TO JAMIE O'BRIEN: https://goo.gl/vgKQg8ollow KOA'S CHANNEL: https://tinyurl.com/yaw2vmh9 Follow Us: @whoisjob ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/znXTEUEoak4/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/znXTEUEoak4/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/znXTEUEoak4/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Jamie O'Brien",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/fpoDRttPUIJmHQgpsH7egBu0EuI\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "xVPcAXBwkOw"
 },
 "snippet": {
 "publishedAt": "2018-10-30T00:12:41.000Z",
 "channelId": "UCTK-mvLrGxzLeodc6uKFkcQ",
 "title": "Maui Surfing SONY 4K",
 "description": "Maui Surfing SONY 4K opening winter swell 2018/19 #rawnuncut #naturalsound #fullsession all the usual suspects present & accounted for. solid 6-8ft NNW ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/xVPcAXBwkOw/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/xVPcAXBwkOw/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/xVPcAXBwkOw/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "PureDIGITALMaui",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/qmQz9EUC1OXjP_N663iUzAotAWE\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "Bci5HJKmJT0"
 },
 "snippet": {
 "publishedAt": "2018-06-19T17:16:30.000Z",
 "channelId": "UCf5CA0OsvhhU-6AcSjT1oKQ",
 "title": "Surfing HEAVY shorebreak and GNARLY kickouts",
 "description": "The 2kooks (Kalani Robb & Tyler Stanaland) and Matt Smith (owner of Buttsnorkeler) get gnarly in the shorebreak and work on their kick out game. Yes, the ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/Bci5HJKmJT0/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/Bci5HJKmJT0/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/Bci5HJKmJT0/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "BEEFS T.V.",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/C3yeqEJFt-_bLhuqWrYBNO7HaC0\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "fNr8kqSLpxQ"
 },
 "snippet": {
 "publishedAt": "2014-11-12T18:00:17.000Z",
 "channelId": "UC3Yc0vyFkYXB1_njh3uj7yw",
 "title": "World's best surfing 2014/2015 (HD)",
 "description": "Subscribe: http://bit.ly/SUBICTV Submit a Video : http://bit.ly/T1RsJh Facebook: https://www.facebook.com/Icompilationtv Follow us on Twitter ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/fNr8kqSLpxQ/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/fNr8kqSLpxQ/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/fNr8kqSLpxQ/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "IcompilationTV",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/Amykv1hEk5vzuqlcAS8z2BEptrU\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "CWYDxh7QD34"
 },
 "snippet": {
 "publishedAt": "2014-09-02T16:52:33.000Z",
 "channelId": "UCblfuW_4rakIf2h6aqANefA",
 "title": "Best surfing action from Red Bull Cape Fear 2014",
 "description": "Click for the FULL EVENT: http://www.redbullcapefear.com/ The southern tip of Sydney Australia is home to one of the most treacherous waves on the planet: ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/CWYDxh7QD34/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/CWYDxh7QD34/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/CWYDxh7QD34/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Red Bull",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/7vLl9WVRzGCbZAOnMUHUXmmBnRQ\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "qYVnwaloMsI"
 },
 "snippet": {
 "publishedAt": "2018-10-23T01:14:32.000Z",
 "channelId": "UCnxGkOGNMqQEUMvroOWps6Q",
 "title": "Joe Rogan - Kelly Slater on Surfing Wipeouts",
 "description": "Taken from Joe Rogan Experience #1185: https://www.youtube.com/watch?v=H3qI3RWgNok.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/qYVnwaloMsI/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/qYVnwaloMsI/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/qYVnwaloMsI/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "JRE Clips",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/i07xXBJdhH7VYOaMMaJod67yKOE\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "UPq4215QKI8"
 },
 "snippet": {
 "publishedAt": "2017-03-27T09:34:36.000Z",
 "channelId": "UCnf6c3oSCMzRexwZGTe2FZA",
 "title": "World's Best Surfing 2017-2018 (HD)",
 "description": "Music - Logic 5am Instrumental find out more about the artist - http://mindoflogic.com/ Music #2 - Asleep in the machine - Bootleg Rascal find out more about the ...",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/UPq4215QKI8/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/UPq4215QKI8/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/UPq4215QKI8/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Fortnite Feen",
 "liveBroadcastContent": "none"
 }
 },
 {
 "kind": "youtube#searchResult",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/mBFGr9KIdkAgqxTPf__EmhX7yUY\"",
 "id": {
 "kind": "youtube#video",
 "videoId": "X7NplWJapRw"
 },
 "snippet": {
 "publishedAt": "2018-09-20T02:16:11.000Z",
 "channelId": "UCkz0-wkd3e_oxhT8OW5236Q",
 "title": "First time surfing PIPELINE !?",
 "description": "first time surfing Pipeline albeit very small pipe - took gopro out for some POV action.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/X7NplWJapRw/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/X7NplWJapRw/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/X7NplWJapRw/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "OT OT",
 "liveBroadcastContent": "none"
 }
 }
 ]
 }
 */
