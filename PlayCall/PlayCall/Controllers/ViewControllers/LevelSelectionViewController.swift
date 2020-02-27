//
//  LevelSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class LevelSelectionViewController: UIViewController {

    
    @IBOutlet weak var levelSelectionNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        levelSelectionNextButton.layer.cornerRadius = 25
    }

}
