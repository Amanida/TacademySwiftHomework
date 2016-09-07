//
//  Album.swift
//  tacademy_homework
//
//  Created by 이규진 on 2016. 8. 31..
//  Copyright © 2016년 이규진. All rights reserved.
//

import Foundation

class Album: Playable {
    var playlist: [Music]

    init() {
        playlist = []
    }
    
    func add(mMusic: Music) {
        playlist.append(mMusic)
        print(mMusic.title, "을 목록에 추가했습니다.")
    }
    
    func delete(name: String) {
        for i in 0...playlist.count {
            if name == playlist[i].title {
                playlist.removeAtIndex(i)
                print(name, "을 삭제했습니다.")
                return
            }
        }
    }
    
    func search(name: String) -> Music? {
        for music in playlist {
            if name == music.title {
                print(name, "을 찾았습니다.")
                return music
            }
        }
        print(name, "은 목록에 없습니다.")
        return nil
    }
    
    func play() {
        for music in playlist {
            music.play()
        }
    }
    
}