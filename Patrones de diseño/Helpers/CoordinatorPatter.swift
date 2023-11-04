//
//  CoordinatorPatter.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 03/11/23.
//

import Foundation
import UIKit

class CoordinatorPatter {
    
    static let shared = CoordinatorPatter()
    
    func navigationPatter(patter: AllPatterType, vc: UIViewController, fatherVC: UIViewController) {
        
        switch patter {
        case .FactoyMethod:
            pushViewControllerForPattern(vc: vc, FactoryMethodViewController.self, fathervc: fatherVC)
        case .AbstractMethod:
            pushViewControllerForPattern(vc: vc, AbstractMethodViewController.self, fathervc: fatherVC)
        case .Builder:
            pushViewControllerForPattern(vc: vc, BuilderViewController.self, fathervc: fatherVC)
        case .Prototype:
            pushViewControllerForPattern(vc: vc, PrototypeViewController.self, fathervc: fatherVC)
        case .Singleton:
            pushViewControllerForPattern(vc: vc, SingletonViewController.self, fathervc: fatherVC)
        
        case .Adapter:
            pushViewControllerForPattern(vc: vc, AdapterViewController.self, fathervc: fatherVC)
        case .Bridge:
            pushViewControllerForPattern(vc: vc, BridgeViewController.self, fathervc: fatherVC)
        case .Composite:
            pushViewControllerForPattern(vc: vc, CompositeViewController.self, fathervc: fatherVC)
        case .Decorator:
            pushViewControllerForPattern(vc: vc, DecoratorViewController.self, fathervc: fatherVC)
        case .Facade:
            pushViewControllerForPattern(vc: vc, FacadeViewController.self, fathervc: fatherVC)
        case .Flywight:
            pushViewControllerForPattern(vc: vc, FlywightViewController.self, fathervc: fatherVC)
        case .Proxy:
            pushViewControllerForPattern(vc: vc, ProxyViewController.self, fathervc: fatherVC)
            
        case .ChainOfResponsability:
            pushViewControllerForPattern(vc: vc, ChainOfResponsabilityViewController.self, fathervc: fatherVC)
        case .Command:
            pushViewControllerForPattern(vc: vc, CommandViewController.self, fathervc: fatherVC)
        case .Interpreter:
            pushViewControllerForPattern(vc: vc, InterpreterViewController.self, fathervc: fatherVC)
        case .Iteractor:
            pushViewControllerForPattern(vc: vc, IteractorViewController.self, fathervc: fatherVC)
        case .Mediator:
            pushViewControllerForPattern(vc: vc, MediatorViewController.self, fathervc: fatherVC)
        case .Memento:
            pushViewControllerForPattern(vc: vc, MementoViewController.self, fathervc: fatherVC)
        case .Observer:
            pushViewControllerForPattern(vc: vc, ObserverViewController.self, fathervc: fatherVC)
        case .State:
            pushViewControllerForPattern(vc: vc, StateViewController.self, fathervc: fatherVC)
        case .Strategy:
            pushViewControllerForPattern(vc: vc, StrategyViewController.self, fathervc: fatherVC)
        case .TemplateMethod:
            pushViewControllerForPattern(vc: vc, TemplateMethodViewController.self, fathervc: fatherVC)
        case .Visitor:
            pushViewControllerForPattern(vc: vc, VisitorViewController.self, fathervc: fatherVC)
        }
    }
    
    func pushViewControllerForPattern<T: UIViewController>(vc: UIViewController, _ vcType: T.Type, fathervc: UIViewController) {
            if let destinationVC = vc as? T {
                fathervc.navigationController?.pushViewController(destinationVC, animated: true)
            } else {
                print("No se pudo crear la instancia del controlador de vista")
            }
        }
}
