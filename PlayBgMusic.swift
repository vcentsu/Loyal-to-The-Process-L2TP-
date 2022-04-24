//
//  PlayBgMusic.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 24/04/22.
//

import AVFoundation


var audioPlayer: AVAudioPlayer?

func playMusic(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.setVolume(0.3, fadeDuration: 3)
            audioPlayer?.play()
        }catch{
            print("ERROR: Couldn't find or play the music file!")
        }
    }
}
