//
//  Music.swift
//  tacademy_homework
//
//  Created by 이규진 on 2016. 8. 29..
//  Copyright © 2016년 이규진. All rights reserved.
//

import Foundation

class Music: Playable {
    var title: String
    var artist: String
    var count: Int
    
    init() {
        title = "untitled"
        artist = "unknown"
        count = 0
    }
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
        count = 0
    }
    
    convenience init(TitleName title: String, ArtistName artist: String, CountNumber count: Int) {
        self.init(title: title, artist: artist)
        self.count = count
    }
    
    func play() {
        print("now playing... ")
        print("Title : ", title)
        print("Artist : ", artist)
        self.count += 1
        print("Count : ", count)
    }
}