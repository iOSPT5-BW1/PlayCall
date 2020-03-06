//
//  QuizViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/2/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit
import AVFoundation

class QuizViewControllerOne: UIViewController {
    
    
    @IBOutlet weak var playCallButton: UIButton!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer?
    var audioFileController = AudioFileController()
    var soundController = SoundController()
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerOneButton.layer.borderWidth = 1
        answerTwoButton.layer.borderWidth = 1
        answerOneButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        answerTwoButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
        answerOneButton.layer.cornerRadius = 25
        answerTwoButton.layer.cornerRadius = 25
        playCallButton.layer.cornerRadius = 100
    }
    
    @IBAction func playCallButtonPressed(_ sender: UIButton) {
        soundController.playSound(fileName: <#T##String#>, fileType: <#T##String#>)
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = String(audioFileController.emptyFormationAudioFileList[questionNumber].audioFileAnswer)
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
    }
    
   
    
    
}
