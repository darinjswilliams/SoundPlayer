//
//  SoundPlayer.swift
//  SoundAnimation
//
//  Created by Darin Williams on 9/13/24.
//

import Foundation
import AVFoundation

class SoundPlayer{
    var audioPlayer: AVAudioPlayer?
    
    init(){
        if let path = Bundle.main.path(forResource: "Ding-dong", ofType: "wav"){
            let url = URL(fileURLWithPath: path)
            
            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                
                //Load file into memory and play it
                self.audioPlayer?.prepareToPlay()
                
            } catch {
                //Handle Errir
            }
        }
    }
    func play(){
        audioPlayer?.play()
    }
}
