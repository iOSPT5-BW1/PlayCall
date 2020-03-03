//
//  Formation.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

struct Formation {
    var formationName: String
    var formationImage: UIImage?
    
    init(formationName: String, formationImage: String) {
        self.formationName = formationName
        self.formationImage = UIImage(named: formationImage)
    }
}
