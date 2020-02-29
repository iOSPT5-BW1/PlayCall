//
//  PositionSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class PositionSelectionViewController: UIViewController {
    let positionController = PositionController()
    
    var selectedSport = SportSelectionViewController.selectedSport!
    
    static var selectedPosition: String?
    
    var positionType: [String]! {
        if selectedSport == "Football"{
            return positionController.footballPositions
        }
        if selectedSport  == "Baseball"{
            return positionController.baseballPositions
        }
        if selectedSport  == "Basketball"{
            return positionController.basketballPositions
        }
        if selectedSport  == "Soccer"{
            return positionController.soccerPositions
        }
        return ["ERROR IN POSITION ELECTION"]
    }
    
    @IBOutlet var positionPickerView: UIPickerView!
    @IBOutlet weak var positionSelectionNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionPickerView.dataSource = self
        positionPickerView.delegate = self
        positionSelectionNextButton.layer.cornerRadius = 25
    }
    
}

extension PositionSelectionViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return positionType.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return positionType[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        PositionSelectionViewController.selectedPosition = positionType[row]
    }
    
}
