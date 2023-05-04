import Foundation
import SwiftUI
import AVKit

class LoveMusicPlayer {
    static let shared = LoveMusicPlayer()
    
    var player: AVAudioPlayer?
    
    private init() {}
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "love", withExtension: "mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    
    func stopSound() {
        player?.stop()
    }
}


class HungryMusicPlayer {
    static let shared = HungryMusicPlayer()
    
    var player: AVAudioPlayer?
    
    private init() {}
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "im_hungry", withExtension: "mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    
    func stopSound() {
        player?.stop()
    }
}

class HappyMusicPlayer {
    static let shared = HappyMusicPlayer()
    
    var player: AVAudioPlayer?
    
    private init() {}
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "im_happy", withExtension: "mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    
    func stopSound() {
        player?.stop()
    }
}
