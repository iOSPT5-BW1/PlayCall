//
//  QuizViewControllerOne.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/5/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class QuizViewControllerOne: UIViewController {
    
    //MARK - UIButtons
    @IBOutlet weak var playCallButton: UIButton!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    var audioFileController = AudioFileController()
    var soundController = SoundController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playCallButtonConfig()
        answerOneButtonConfig()
        answerTwoButtonConfig()
        answerThreeButtonConfig()
        answerFourButtonConfig()
        
    }
    
    //MARK - HELPER FUNCTIONS
    
    func playCallButtonConfig() {
        playCallButton.layer.cornerRadius = 100
    }
    
    func answerOneButtonConfig() {
        answerOneButton.layer.cornerRadius = 25
        answerOneButton.layer.borderWidth = 1
        answerOneButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
    }
    
    func answerTwoButtonConfig() {
        answerTwoButton.layer.cornerRadius = 25
        answerTwoButton.layer.borderWidth = 1
        answerTwoButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
    }
    
    func answerThreeButtonConfig() {
        answerThreeButton.layer.cornerRadius = 25
        answerThreeButton.layer.borderWidth = 1
        answerThreeButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
    }
    
    func answerFourButtonConfig() {
        answerFourButton.layer.cornerRadius = 25
        answerFourButton.layer.borderWidth = 1
        answerFourButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
    }
    
    //MARK - ACTIONS
    @IBAction func playCallButtonPressed(_ sender: Any) {
        soundController.playSound(fileName: "E12-AllStreaksGo-Snap3", fileType: "mp3")
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let correctAnswer = "E12-AllStreaksGo-Snap3"
        
        if userAnswer == correctAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
    }
}
