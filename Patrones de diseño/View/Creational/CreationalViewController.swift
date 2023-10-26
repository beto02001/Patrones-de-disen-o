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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func getPatterCreational(index: Int) -> PatterCreationalType {
        switch index {
        case 0:
            return .FactoyMethod
        case 1:
            return .AbstractMethod
        case 2:
            return .Builder
        case 3:
            return .Prototype
        case 4:
            return .Singleton
        default:
            return .FactoyMethod
        }
    }
    
}

extension CreationalViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return creacionales.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coleccionCreacional", for: indexPath) as! CeldaCreacionalCollectionViewCell
        let patron = creacionales[indexPath.row]
        cell.cardContainer.setColorCard(index: indexPath.row)
        cell.nombrePatron.text = patron.nombre
        cell.iconImage.layer.cornerRadius = 45
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("se tocó en \(indexPath.row)")
        
        let patter = getPatterCreational(index: indexPath.row)
        let storyboard = PatterCreationalFactory.buildPatterCreational(patter: patter)
        
        switch patter {
        case .FactoyMethod:
            guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "FactoryMethodViewController") as? FactoryMethodViewController else { return }
            self.navigationController?.pushViewController(destinationVC, animated: true)
        case .AbstractMethod:
            guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "AbstractMethodViewController") as? AbstractMethodViewController else { return }
            self.navigationController?.pushViewController(destinationVC, animated: true)
        case .Builder:
            guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "BuilderViewController") as? BuilderViewController else { return }
            self.navigationController?.pushViewController(destinationVC, animated: true)
        case .Prototype:
            guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "PrototypeViewController") as? PrototypeViewController else { return }
            self.navigationController?.pushViewController(destinationVC, animated: true)
        case .Singleton:
            guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "SingletonViewController") as? SingletonViewController else { return }
            self.navigationController?.pushViewController(destinationVC, animated: true)
        }
    }
}
