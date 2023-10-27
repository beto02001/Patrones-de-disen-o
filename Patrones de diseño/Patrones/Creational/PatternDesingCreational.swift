//
//  PatternDesingCreational.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 25/10/23.
//

import Foundation
import UIKit

enum PatterCreationalType {
    case FactoyMethod
    case AbstractMethod
    case Builder
    case Prototype
    case Singleton
}

class PatterCreationalFactory {
    
    static func buildPatterCreational(patter: PatterCreationalType) -> UIStoryboard {
        switch patter {
        case .FactoyMethod:
            return UIStoryboard(name: "FactoryMethod", bundle: nil)
        case .AbstractMethod:
            return UIStoryboard(name: "AbstractMethod", bundle: nil)
        case .Builder:
            return UIStoryboard(name: "Builder", bundle: nil)
        case .Prototype:
            return UIStoryboard(name: "Prototype", bundle: nil)
        case .Singleton:
            return UIStoryboard(name: "Singleton", bundle: nil)
        }
    }
}

