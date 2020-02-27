//
//  FormationCollectionViewCell.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class FormationCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var formationImageView: UIImageView!
    @IBOutlet weak var formationLabel: UILabel!
    
    var formationList: FormationSelectionViewController? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        if let formations = formationList {
            formationImageView.image = 
        }
    }
    
}
