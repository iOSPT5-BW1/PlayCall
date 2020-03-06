//
//  TeamSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class TeamSelectionViewController: UIViewController {
    
    let teamController = TeamController()
    var selectedLevel = LevelSelectionViewController.selectedLevel ?? "High School"
    var selectedSport = SportSelectionViewController.selectedSport ?? "Baseball"
    
    static var selectedTeam: String!
    
    var teamType: [String] {
        if selectedLevel == "High School"{
            if selectedSport == "Football"{
                return teamController.footballHighSchoolTeamList
            }
            else if selectedSport == "Baseball" {
                return teamController.baseballHighSchoolTeamList
            }
            else if selectedSport == "Basketball" {
                return teamController.basketballHighSchoolTeamList
            }
            else if selectedSport == "Soccer" {
                return teamController.soccerHighSchoolTeamList
            }
            else{
                return ["ERROR IN HS SELECT"]
            }
        }
        if selectedLevel == "College"{
            if selectedSport == "Football"{
                return teamController.footballCollegeTeamList
            }
            else if selectedSport == "Baseball" {
                return teamController.baseballCollegeTeamList
            }
            else if selectedSport == "Basketball" {
                return teamController.basketballCollegeTeamList
            }
            else if selectedSport == "Soccer" {
                return teamController.soccerCollegeTeamList
            }
            else{
                return ["ERROR IN COLLEGE SELECT"]
            }
        }
        if selectedLevel == "Professional"{
            if selectedSport == "Football"{
                return teamController.footballProTeamList
            }
            else if selectedSport == "Baseball" {
                return teamController.baseballProTeamList
            }
            else if selectedSport == "Basketball" {
                return teamController.basketballProTeamList
            }
            else if selectedSport == "Soccer" {
                return teamController.soccerProTeamList
            }
            else{
                return ["ERROR IN PRO SELECT"]
            }
        }
        else {return ["ERROR IN LEVEL SELECT"]}
        
    }
    
    @IBOutlet var teamPickerView: UIPickerView!
    @IBOutlet weak var teamSelectionNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamPickerView.dataSource = self
        teamPickerView.delegate = self
        teamSelectionNextButton.layer.cornerRadius = 25
    }
    
    
}
extension TeamSelectionViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamType.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return teamType[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        TeamSelectionViewController.selectedTeam = teamType[row]
    }
    
}
