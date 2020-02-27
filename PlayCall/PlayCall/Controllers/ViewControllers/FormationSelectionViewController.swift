//
//  FormationSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 2/26/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class FormationSelectionViewController: UIViewController {
    
    var formationController = FormationController()

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

}

extension FormationSelectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}
