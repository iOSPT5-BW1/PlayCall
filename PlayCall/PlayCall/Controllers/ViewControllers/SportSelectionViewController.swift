//
//  SportSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit


class SportSelectionViewController: UIViewController {
    
    let sportController = SportController()
    
    //changed to var from let to function
    var selectedLevel = LevelSelectionViewController.selectedLevel ?? "High School"
    
    static var selectedSport: String!
    
    @IBOutlet var sportPickerView: UIPickerView!
    @IBOutlet weak var sportSelectionNextButton: UIButton!
    
    
    
    //    init?(coder: NSCoder, selectedLevel: String) {
    //        self.selectedLevel = selectedLevel
    //        super.init(coder: coder)
    //    }
    //
    //    required init?(coder: NSCoder) {
    //        fatalError("You need to create this view controller with selected level.")
    //    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sportPickerView.dataSource = self
        sportPickerView.delegate = self
        sportSelectionNextButton.layer.cornerRadius = 25
    }
    
}

extension SportSelectionViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sportController.sportList.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return sportController.sportList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SportSelectionViewController.selectedSport = sportController.sportList[row]
    }
    
}
