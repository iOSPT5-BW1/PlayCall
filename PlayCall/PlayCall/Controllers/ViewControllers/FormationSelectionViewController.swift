//
//  FormationSelectionViewController.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/2/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class FormationSelectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var formationController = FormationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
}

extension FormationSelectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return formationController.formations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FormationCell", for: indexPath) as? FormationCollectionViewCell else {return UICollectionViewCell()}
        
        let formationCard = formationController.formations[indexPath.item]
        cell.formation = formationCard
        return cell
    }
    
    
}
