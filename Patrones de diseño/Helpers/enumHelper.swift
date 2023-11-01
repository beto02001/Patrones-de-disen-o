//
//  enumHelper.swift
//  Patrones de diseño
//
//  Created by Luis Humberto on 01/11/23.
//

import Foundation

enum SBID: String {
    case creational = "Creational"
    case estructural = "Estructural"
    case comportamiento = "Comportamiento"
}

enum TipoPatron {
    case creacional
    case estructural
    case comportamiento
}

enum AllPatterType: String {
    //MARK: Creacionales
    case FactoyMethod = "FactoryMethod"
    case AbstractMethod = "AbstractMethod"
    case Builder = "Builder"
    case Prototype = "Prototype"
    case Singleton = "Singleton"
    
    //MARK: Estructurales
    case Adapter = "Adapter"
    case Bridge = "Bridge"
    case Composite = "Composite"
    case Decorator = "Decorator"
    case Facade = "Facade"
    case Flywight = "Flywight"
    case Proxy = "Proxy"
    
    //MARK: Comportamiento
}
