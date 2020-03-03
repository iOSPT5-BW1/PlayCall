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
    
    var formation: Formation? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let formationName = formation?.formationName,
            let formationImage = formation?.formationImage else {return}
        formationImageView.image = formationImage
        formationLabel.text = formationName
    }
    
}
