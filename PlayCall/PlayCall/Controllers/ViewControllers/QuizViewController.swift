//
//  QuizViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/2/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit
import AVFoundation

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var playCallButton: UIButton!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerOneButton.layer.borderWidth = 1
        answerTwoButton.layer.borderWidth = 1
        answerThreeButton.layer.borderWidth = 1
        answerFourButton.layer.borderWidth = 1
        
        answerOneButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        answerTwoButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        answerThreeButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        answerFourButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        
        answerOneButton.layer.cornerRadius = 25
        answerTwoButton.layer.cornerRadius = 25
        answerThreeButton.layer.cornerRadius = 25
        answerFourButton.layer.cornerRadius = 25
        
        playCallButton.layer.cornerRadius = 100
    }
    
    @IBAction func playCallButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
    }
    
    
    var player: AVAudioPlayer?

    func playSound() {
        guard let url = Bundle.main.url(forResource: "E12-DoublePassFlyGo-Snap2", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}
