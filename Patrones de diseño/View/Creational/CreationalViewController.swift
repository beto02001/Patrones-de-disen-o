//
//  CreationalViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 20/09/23.
//

import UIKit

class CreationalViewController: UIViewController {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var creacionales = ViewModel.shared.arrayCreacional.patrones
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}

extension CreationalViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return creacionales.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coleccionCreacional", for: indexPath) as! CeldaCreacionalCollectionViewCell
        let patron = creacionales[indexPath.row]
        cell.cardContainer.degradado(index: indexPath.row)
        cell.nombrePatron.text = patron.nombre
        cell.iconImage.layer.cornerRadius = 45
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("se tocó en \(indexPath.row)")
    }
}
