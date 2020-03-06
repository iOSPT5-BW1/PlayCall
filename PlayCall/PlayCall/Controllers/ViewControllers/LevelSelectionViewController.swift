//
//  LevelSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class LevelSelectionViewController: UIViewController {
    
    private let levelController = LevelController()
    
    static var selectedLevel: String?
    
    //MARK: IBOutlets
    @IBOutlet weak var levelSelectionNextButton: UIButton!
    @IBOutlet var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        levelSelectionNextButton.layer.cornerRadius = 25
    }
}



extension LevelSelectionViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return levelController.levelList.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return levelController.levelList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        LevelSelectionViewController.selectedLevel = levelController.levelList[row] 
    }
    
}
