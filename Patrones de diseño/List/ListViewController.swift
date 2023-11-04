//
//  ListViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 20/09/23.
//

import UIKit

class ListViewController: UIViewController {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var patrones: (creacionales: [PatronesCreacionales], estructurales: [PatronesEstructurales], comportamiento: [PatronesComportamiento]) = ([], [], [])
    var typePatron: TipoPatron = .creacional
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let storyboardID = self.restorationIdentifier
        switch storyboardID {
            case SBID.creational.rawValue:
            patrones.creacionales = ViewModel.shared.arrayCreacional.patrones
            typePatron = .creacional
            case SBID.estructural.rawValue:
            patrones.estructurales = ViewModel.shared.arrayEstructutal.patrones
            typePatron = .estructural
            case SBID.comportamiento.rawValue:
            patrones.comportamiento = ViewModel.shared.arrayComportamiento.patrones
            typePatron = .comportamiento
            default:
                break
        }
    }

}

extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch typePatron {
        case .creacional:
            return patrones.creacionales.count
        case .estructural:
            return patrones.estructurales.count
        case .comportamiento:
            return patrones.comportamiento.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemColeccion", for: indexPath) as! CeldaListCollectionViewCell
        if !patrones.creacionales.isEmpty {
            cell.nombrePatron.text = patrones.creacionales[indexPath.row].nombre
        } else if !patrones.estructurales.isEmpty {
            cell.nombrePatron.text = patrones.estructurales[indexPath.row].nombre
        } else if !patrones.comportamiento.isEmpty {
            cell.nombrePatron.text = patrones.comportamiento[indexPath.row].nombre
        }
        cell.cardContainer.setColorCard(index: indexPath.row)
        cell.iconImage.layer.cornerRadius = 45
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var patter: AllPatterType
        var title: String = ""
        switch typePatron {
            case .creacional:
                patter = patrones.creacionales[indexPath.row].caseName
                title = patrones.creacionales[indexPath.row].nombre
            case .estructural:
                patter = patrones.estructurales[indexPath.row].caseName
                title = patrones.estructurales[indexPath.row].nombre
            case .comportamiento:
                patter = patrones.comportamiento[indexPath.row].caseName
                title = patrones.comportamiento[indexPath.row].nombre
        }
        let storyboard = PatterAllCreationalFactory.buildStoryBoardPatter(patter: patter)
        let identifierVC = PatterAllCreationalFactory.vcNamesCreation(patter: patter)
        let vcProb = storyboard.instantiateViewController(withIdentifier: identifierVC)
        vcProb.navigationItem.title = title
        vcProb.navigationItem.prompt = typePatron.rawValue
        CoordinatorPatter.shared.navigationPatter(patter: patter, vc: vcProb, fatherVC: self)
    }
}
