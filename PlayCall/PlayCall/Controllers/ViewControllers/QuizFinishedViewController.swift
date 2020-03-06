//
//  QuizFinishedViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/5/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class QuizFinishedViewController: UIViewController {

    @IBOutlet var userTextView: UITextView!
    @IBOutlet var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabelLogic()
        userText()
    }
    
    func scoreLabelLogic() {
        scoreLabel.text = "\(Score.userScore)/\(Score.overallScore.count)"
    }
    func userText() {
        userTextView.text = "Thank you for taking the quiz! According to data from all of our users you have ranked 4.3 out of 5 overall in \(LevelSelectionViewController.selectedLevel!.lowercased()) \(SportSelectionViewController.selectedSport!.lowercased())."
    }
}
