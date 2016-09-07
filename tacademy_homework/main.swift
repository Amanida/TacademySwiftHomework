//
//  main.swift
//  tacademy_homework
//
//  Created by 이규진 on 2016. 8. 29..
//  Copyright © 2016년 이규진. All rights reserved.
//

import Foundation

var music1 = Music()
var music2 = Music(title: "붉은노을", artist: "이문세")
var music3 = Music(TitleName: "쿵", ArtistName: "Zion-T", CountNumber: 10)

music1.play()
music2.play()
music3.play()
music2.play()

print("Print Count")
print(music1.count)
print(music2.count)
print(music3.count)

let playlist = Album()
playlist.add(music1)
playlist.add(music2)
playlist.add(music3)
playlist.play()

let music = playlist.search("붉은노을")

playlist.delete("붉은노을")
