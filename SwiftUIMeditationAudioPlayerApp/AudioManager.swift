//
//  AudioManager.swift
//  SwiftUIMeditationAudioPlayerApp
//
//  Created by ipeerless on 16/08/2023.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject{
//    static let shared = AudioManager()
    var player: AudioManager?
    @Published private(set) var isPlaying: Bool = false {
        didSet {
            print("isPlaying", isPlaying)
        }
    }
    @Published private(set) var isLooping: Bool = false
    
    func startPlayer(track: String, isPreview:Bool =  false) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {
            print("\(track)")
            return
        }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player =   try AVAudioPlayer(contentsOf: url)
            
            if isPreview {
                player?.prepareToPlay()
            } else {
                
                player?.player()
                isPlaying = true
            }
        } catch  {
            print(error)
        }
    }
    
    func playPause() {
        guard let player = player  else {
            print("no audio player instance")
            return
        }
        if player.isPlaying {
            player.pause()
            isPlaying = false
            
        } else {
            player.play()
            isPlaying = true
        }
    }
    func stop() {
        guard let player = player else {return}
        if player.isPlaying  {
            player.stop()
            isPlaying = false
        }
    }
    func toggleLoop() {
        guard let player = player else {return}
        player.numberOfLoops = player.numberOfLoops == 0 ? -1 : 0
        isLooping = player.numberOfLoops != 0
        print(isLooping)
    }
}
