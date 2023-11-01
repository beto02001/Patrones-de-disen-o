//
//  ListViewController.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 20/09/23.
//

import UIKit

class ListViewController: UIViewController {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var patrones: (creacionales: [PatronesCreacionales], estructurales: [PatronesEstructurales]) = ([], [])
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
            default:
                break
        }
        print("Storyboard ID: \(storyboardID ?? "No Storyboard ID found")")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
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
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemColeccion", for: indexPath) as! CeldaListCollectionViewCell
        if !patrones.creacionales.isEmpty {
            cell.nombrePatron.text = patrones.creacionales[indexPath.row].nombre
        } else if !patrones.estructurales.isEmpty {
            cell.nombrePatron.text = patrones.estructurales[indexPath.row].nombre
        }
        cell.cardContainer.setColorCard(index: indexPath.row)
        cell.iconImage.layer.cornerRadius = 45
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch typePatron {
        case .creacional:
            let patter = patrones.creacionales[indexPath.row].caseName
            let storyboard = PatterAllCreationalFactory.buildStoryBoardPatter(patter: patter)
            let identifierVC = PatterAllCreationalFactory.vcNamesCreational(patter: patter)
            let vcProb = storyboard.instantiateViewController(withIdentifier: identifierVC)
            navigationPatter(patter: patter, vc: vcProb)
            
        case .estructural:
            let patter = patrones.estructurales[indexPath.row].caseName
            let storyboard = PatterAllCreationalFactory.buildStoryBoardPatter(patter: patter)
            let identifierVC = PatterAllCreationalFactory.vcNamesCreational(patter: patter)
            let vcProb = storyboard.instantiateViewController(withIdentifier: identifierVC)
            navigationPatter(patter: patter, vc: vcProb)
        case .comportamiento:
            return
        }
        
    }
    
    func navigationPatter(patter: AllPatterType, vc: UIViewController) {
        
        switch patter {
        case .FactoyMethod:
            pushViewControllerForPattern(vc: vc, FactoryMethodViewController.self)
        case .AbstractMethod:
            pushViewControllerForPattern(vc: vc, AbstractMethodViewController.self)
        case .Builder:
            pushViewControllerForPattern(vc: vc, BuilderViewController.self)
        case .Prototype:
            pushViewControllerForPattern(vc: vc, PrototypeViewController.self)
        case .Singleton:
            pushViewControllerForPattern(vc: vc, SingletonViewController.self)
        
        case .Adapter:
            pushViewControllerForPattern(vc: vc, AdapterViewController.self)
        case .Bridge:
            pushViewControllerForPattern(vc: vc, BridgeViewController.self)
        case .Composite:
            pushViewControllerForPattern(vc: vc, CompositeViewController.self)
        case .Decorator:
            pushViewControllerForPattern(vc: vc, DecoratorViewController.self)
        case .Facade:
            pushViewControllerForPattern(vc: vc, FacadeViewController.self)
        case .Flywight:
            pushViewControllerForPattern(vc: vc, FlywightViewController.self)
        case .Proxy:
            pushViewControllerForPattern(vc: vc, ProxyViewController.self)
        }
    }
    
    func pushViewControllerForPattern<T: UIViewController>(vc: UIViewController, _ vcType: T.Type) {
        if let destinationVC = vc as? T {
            self.navigationController?.pushViewController(destinationVC, animated: true)
        } else {
            print("No se pudo crear la instancia del controlador de vista")
        }
    }
}
