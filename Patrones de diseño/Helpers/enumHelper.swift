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

enum TipoPatron: String {
    case creacional = "Creacional"
    case estructural = "Estructural"
    case comportamiento = "De comportamiento"
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
    case ChainOfResponsability = "ChainOfResponsability"
    case Command = "Command"
    case Interpreter = "Interpreter"
    case Iteractor = "Iteractor"
    case Mediator = "Mediator"
    case Memento = "Memento"
    case Observer = "Observer"
    case State = "State"
    case Strategy = "Strategy"
    case TemplateMethod = "TemplateMethod"
    case Visitor = "Visitor"
    
}
