//
//  SoundController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/4/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import AVFoundation

class SoundController {
    
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, fileType: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileType) else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
